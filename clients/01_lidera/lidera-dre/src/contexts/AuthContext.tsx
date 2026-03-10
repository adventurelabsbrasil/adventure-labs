import {
  createContext,
  useContext,
  useEffect,
  useState,
  useCallback,
  type ReactNode,
} from 'react';
import { supabase } from '../lib/supabase';
import type { User } from '@supabase/supabase-js';
import type { DrePerfil } from '../types';

interface AuthContextValue {
  user: User | null;
  profile: DrePerfil | null;
  loading: boolean;
  signOut: () => Promise<void>;
  refetchProfile: () => Promise<void>;
}

const AuthContext = createContext<AuthContextValue | null>(null);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [profile, setProfile] = useState<DrePerfil | null>(null);
  const [loading, setLoading] = useState(true);

  const fetchProfile = useCallback(async (userId: string) => {
    const { data } = await supabase
      .from('dre_perfis')
      .select('*')
      .eq('user_id', userId)
      .single();
    setProfile(data as DrePerfil | null);
  }, []);

  const refetchProfile = useCallback(async () => {
    if (user?.id) await fetchProfile(user.id);
  }, [user?.id, fetchProfile]);

  useEffect(() => {
    const init = async () => {
      const { data: { session } } = await supabase.auth.getSession();
      setUser(session?.user ?? null);
      if (session?.user?.id) {
        await fetchProfile(session.user.id);
      } else {
        setProfile(null);
      }
      setLoading(false);
    };
    init();

    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      async (_, session) => {
        setUser(session?.user ?? null);
        if (session?.user?.id) {
          await fetchProfile(session.user.id);
        } else {
          setProfile(null);
        }
        setLoading(false);
      }
    );

    return () => subscription.unsubscribe();
  }, [fetchProfile]);

  const signOut = useCallback(async () => {
    await supabase.auth.signOut();
    setUser(null);
    setProfile(null);
  }, []);

  const value: AuthContextValue = {
    user,
    profile,
    loading,
    signOut,
    refetchProfile,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}
