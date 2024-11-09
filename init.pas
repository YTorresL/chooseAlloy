program Radioactivity;

    {Interface para prevenir errores de tipado}

type
    Company = record
        company: string;
        percentage: real;
        materials: string;
    end;

var
    companies: array[1..4] of Company;
    i, bestIndex: integer;
    bestPercentage: real;

begin
    { Definimos las compañia con su nombre, porcentaje y materiales }
    companies[1].company := 'Empresa 1';
    companies[1].percentage := 91.0;
    companies[1].materials := 'Plomo, Hierro comun';

    companies[2].company := 'Empresa 2';
    companies[2].percentage := 75.0;
    companies[2].materials := 'Plomo, Hierro comun';

    companies[3].company := 'Empresa 3';
    companies[3].percentage := 79.0;
    companies[3].materials := 'Acero, Titanio, Hierro comun';

    companies[4].company := 'Empresa 4';
    companies[4].percentage := 98.0;
    companies[4].materials := 'Titanio, Plomo, Acero, Hierro comun';

    { Inicializamos el mejor porcentaje y el índice de la mejor empresa }
    bestPercentage := 0.0;
    bestIndex := 1;

    { Buscamos la empresa con el mayor porcentaje de aleación }
    for i := 1 to 4 do
    begin
        if companies[i].percentage > bestPercentage then
        begin
            bestPercentage := companies[i].percentage;
            bestIndex := i;
        end;
    end;

    { Mostramos la mejor empresa }
    writeln('La empresa con la mejor aleacion es: ', companies[bestIndex].company);
    writeln('percentage de aleacion: ', companies[bestIndex].percentage:0:2, '%');
    writeln('materials usados: ', companies[bestIndex].materials);
    readln;
end.