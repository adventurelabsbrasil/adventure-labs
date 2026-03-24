import React from 'react';

const AppLayout = ({
    isSidebarCollapsed,
    SidebarComponent,
    HeaderComponent,
    children
}) => {
    return (
        <div className="flex min-h-screen bg-white dark:bg-gray-900 font-sans text-slate-200 overflow-hidden">
            {SidebarComponent}

            {/* CONTEÚDO PRINCIPAL */}
            <div className={`flex-1 flex flex-col h-screen overflow-hidden transition-all duration-300 ${!isSidebarCollapsed ? 'lg:pl-64' : 'lg:pl-0'}`}>
                {HeaderComponent}

                <div className="flex-1 overflow-hidden bg-white dark:bg-gray-900 relative">
                    {children}
                </div>
            </div>
        </div>
    );
};

export default AppLayout;
