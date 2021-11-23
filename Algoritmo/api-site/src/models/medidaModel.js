var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {
    instrucaoSql = `select 
                        tempatual,
                        datahora,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from dados
                    where fkcaminhao = ${idAquario}
                    order by iddados desc limit ${limite_linhas}`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idAquario) {
    instrucaoSql = `select 
                        tempatual,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fkcaminhao 
                        from dados where fkcaminhao = ${idAquario} 
                    order by id desc limit 1`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}