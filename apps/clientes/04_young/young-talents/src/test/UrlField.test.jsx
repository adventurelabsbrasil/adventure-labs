import { describe, it, expect, vi } from 'vitest';
import { render, screen, fireEvent } from '@testing-library/react';
import UrlField from '../components/UrlField';

describe('UrlField', () => {
    const mockOnChange = vi.fn();

    beforeEach(() => {
        mockOnChange.mockClear();
    });

    it('renders "Nenhum link cadastrado" when value is empty after canceling edit', () => {
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value=""
                onChange={mockOnChange}
            />
        );
        // Starts in edit mode because value is empty
        expect(screen.getByPlaceholderText('Cole a URL aqui...')).toBeInTheDocument();

        // Click cancel
        fireEvent.click(screen.getByTitle('Cancelar'));

        expect(screen.getByText('Nenhum link cadastrado')).toBeInTheDocument();
    });

    it('renders a link when a valid URL is provided', () => {
        const testUrl = 'https://example.com/cv.pdf';
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value={testUrl}
                onChange={mockOnChange}
            />
        );
        const link = screen.getByRole('link');
        expect(link).toBeInTheDocument();
        expect(link).toHaveAttribute('href', testUrl);
        expect(link).toHaveTextContent(testUrl);
    });

    it('renders truncated text when an invalid URL is provided', () => {
        const invalidUrl = 'not-a-url';
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value={invalidUrl}
                onChange={mockOnChange}
            />
        );
        expect(screen.queryByRole('link')).not.toBeInTheDocument();
        expect(screen.getByText(invalidUrl)).toBeInTheDocument();
    });

    it('enters edit mode when clicking the edit button', () => {
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value="https://example.com"
                onChange={mockOnChange}
            />
        );
        const editButton = screen.getByTitle('Editar URL');
        fireEvent.click(editButton);

        expect(screen.getByPlaceholderText('Cole a URL aqui...')).toBeInTheDocument();
        expect(screen.getByDisplayValue('https://example.com')).toBeInTheDocument();
    });

    it('calls onChange with correct data when saving', () => {
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value=""
                onChange={mockOnChange}
            />
        );

        // By default, if value is empty, it starts in editing mode based on setIsEditing(!value)
        const input = screen.getByPlaceholderText('Cole a URL aqui...');
        fireEvent.change(input, { target: { value: 'https://new-url.com' } });

        const saveButton = screen.getByTitle('Salvar');
        fireEvent.click(saveButton);

        expect(mockOnChange).toHaveBeenCalledWith('cvUrl', 'https://new-url.com');
    });

    it('cancels editing and restores original display', () => {
        render(
            <UrlField
                label="Link CV"
                field="cvUrl"
                value="https://original.com"
                onChange={mockOnChange}
            />
        );

        // Starts in display mode because value exists
        fireEvent.click(screen.getByTitle('Editar URL'));
        const input = screen.getByPlaceholderText('Cole a URL aqui...');
        fireEvent.change(input, { target: { value: 'https://changed.com' } });

        fireEvent.click(screen.getByTitle('Cancelar'));

        // Should show the link again
        expect(screen.getByRole('link')).toHaveAttribute('href', 'https://original.com');
        expect(mockOnChange).not.toHaveBeenCalled();
    });
});
