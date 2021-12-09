var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {
    instrucaoSql = `select
                        tempatual,
                        DATE_FORMAT(datahora,'%H:%i:%s') as momento_grafico
                    from dados
                    where fkcaminhao = ${idAquario}
                    order by iddados desc limit 20; `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idAquario) {
    instrucaoSql = `select
                        tempatual,
                        DATE_FORMAT(datahora,'%H:%i:%s') as momento_grafico
                        from dados
                        join caminhao on fkcaminhao = idcaminhao 
                        where fkcaminhao = ${idAquario} 
                    order by iddados desc limit 1;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}