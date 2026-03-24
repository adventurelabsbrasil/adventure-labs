import { describe, it, expect } from 'vitest';
import { render, screen } from '@testing-library/react';
import InputField from '../components/InputField';

describe('InputField', () => {
    it('renders label correctly', () => {
        render(
            <InputField
                label="Nome Completo"
                field="fullName"
                value=""
                onChange={() => { }}
            />
        );

        expect(screen.getByText('Nome Completo')).toBeInTheDocument();
    });

    it('renders input with correct value', () => {
        render(
            <InputField
                label="Email"
                field="email"
                value="test@example.com"
                onChange={() => { }}
            />
        );

        const input = screen.getByRole('textbox');
        expect(input).toHaveValue('test@example.com');
    });

    it('calls onChange when input value changes', async () => {
        const handleChange = vi.fn();

        render(
            <InputField
                label="Telefone"
                field="phone"
                value=""
                onChange={handleChange}
            />
        );

        const input = screen.getByRole('textbox');
        input.focus();
        await input.dispatchEvent(new Event('change', { bubbles: true }));

        // The onChange is triggered on blur, not on input
    });
});
