const fs = require('fs');

function csvToSql(csvFilePath, tableName) {

    const csvData = fs.readFileSync(csvFilePath, 'utf-8');

    const csvLines = csvData.split('\n');

    const columns = csvLines[0].split(',');

    let createTableSql = `CREATE TABLE ${tableName} (\n`;

    columns.forEach((column) => {
        createTableSql += `  ${column} VARCHAR(255),\n`;
    });

    createTableSql = createTableSql.slice(0, -2);
    createTableSql += '\n);';


    let insertDataSql = '';

    for (let i = 1; i < csvLines.length; i++) {
        const values = csvLines[i].split(',');

        if (values.length === columns.length) {
            let rowSql = `INSERT INTO ${tableName} (${columns.join(', ')}) VALUES (`;

            values.forEach((value) => {
                rowSql += `'${value}', `;
            });

            rowSql = rowSql.slice(0, -2);
            rowSql += ');\n';

            insertDataSql += rowSql;
        }
    }

    fs.writeFileSync('Pokedex.sql', createTableSql + '\n\n' + insertDataSql, 'utf-8');

    console.log('Arquivo SQL gerado com sucesso: pokedex.sql');
}

csvToSql('pokedex.csv', 'Pokedex');