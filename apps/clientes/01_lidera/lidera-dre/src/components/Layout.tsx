import { useState } from 'react';
import { Outlet, NavLink, useLocation, useNavigate } from 'react-router-dom';
import { useAuth } from '../contexts/AuthContext';
import './Layout.css';

const navItems = [
  { to: '/', label: 'Lançamentos' },
  { to: '/lancamentos/editar', label: 'Editar lançamentos' },
  { to: '/categorias', label: 'Categorias' },
  { to: '/dre-mensal', label: 'DRE Mensal' },
  { to: '/dre-anual', label: 'DRE Anual' },
  { to: '/exportar', label: 'Exportar' },
];

const titles: Record<string, string> = {
  '/': 'Lançamentos',
  '/lancamentos/editar': 'Editar lançamentos',
  '/categorias': 'Categorias',
  '/dre-mensal': 'DRE Mensal',
  '/dre-anual': 'DRE Anual',
  '/exportar': 'Exportar',
  '/admin': 'Administração',
};

export default function Layout() {
  const { profile, signOut } = useAuth();
  const navigate = useNavigate();
  const [sidebarOpen, setSidebarOpen] = useState(false);
  const location = useLocation();
  const path = location.pathname;
  const title = titles[path] ?? 'Lidera DRE';

  const handleSignOut = async () => {
    await signOut();
    navigate('/login', { replace: true });
  };

  return (
    <div className="layout no-print">
      <button
        type="button"
        className="menu-toggle no-print"
        onClick={() => setSidebarOpen((o) => !o)}
        aria-label="Abrir menu"
      >
        ☰
      </button>
      <aside className={`sidebar ${sidebarOpen ? 'open' : ''}`}>
        <div className="sidebar-header">
          <h1>Lidera DRE</h1>
          <span>Receitas e despesas</span>
        </div>
        <nav>
          {navItems.map(({ to, label }) => (
            <NavLink
              key={to}
              to={to}
              className={({ isActive }) => `sidebar-nav-link ${isActive ? 'active' : ''}`}
              onClick={() => setSidebarOpen(false)}
            >
              {label}
            </NavLink>
          ))}
          {profile?.role === 'admin' && (
            <NavLink
              to="/admin"
              className={({ isActive }) => `sidebar-nav-link ${isActive ? 'active' : ''}`}
              onClick={() => setSidebarOpen(false)}
            >
              Administração
            </NavLink>
          )}
          <button
            type="button"
            className="sidebar-nav-link sidebar-signout"
            onClick={handleSignOut}
          >
            Sair
          </button>
        </nav>
      </aside>
      <div className="sidebar-overlay" onClick={() => setSidebarOpen(false)} aria-hidden />
      <main className="main">
        <header className="main-header">
          <h2>{title}</h2>
        </header>
        <div className="main-content">
          <Outlet />
        </div>
      </main>
    </div>
  );
}
