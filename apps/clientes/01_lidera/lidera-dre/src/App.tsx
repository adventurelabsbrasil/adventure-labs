import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import ProtectedRoute from './components/ProtectedRoute';
import Layout from './components/Layout';
import Login from './pages/Login';
import Lancamentos from './pages/Lancamentos';
import LancamentosEditar from './pages/LancamentosEditar';
import Categorias from './pages/Categorias';
import DREMensal from './pages/DREMensal';
import DREAnual from './pages/DREAnual';
import Exportar from './pages/Exportar';
import Admin from './pages/Admin';

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route
          path="/"
          element={
            <ProtectedRoute>
              <Layout />
            </ProtectedRoute>
          }
        >
          <Route index element={<Lancamentos />} />
          <Route path="lancamentos/editar" element={<LancamentosEditar />} />
          <Route path="categorias" element={<Categorias />} />
          <Route path="dre-mensal" element={<DREMensal />} />
          <Route path="dre-anual" element={<DREAnual />} />
          <Route path="exportar" element={<Exportar />} />
          <Route path="admin" element={<Admin />} />
        </Route>
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>
    </BrowserRouter>
  );
}
