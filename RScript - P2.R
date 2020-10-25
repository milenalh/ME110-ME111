setwd("C:/Users/milen/OneDrive/Documentos/ME110/P2")
DadosP2 <- read.csv("RA184654obitos-estados.csv", sep = ";")
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "OUTRAS"] = "Outras causas"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "INDETERMINADA"] = "Outras causas"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "COVID"] = "COVID - 19"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "INSUFICIENCIA_RESPIRATORIA"] = "Doenças respiratórias"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "SRAG"] = "Doenças respiratórias"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "PNEUMONIA"] = "Doenças respiratórias"
DadosP2$tipo_doenca[DadosP2$tipo_doenca == "SEPTICEMIA"] = "Doenças respiratórias"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "< 9"] = "<= 39 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "out/19"] = "<= 39 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "20 - 29"] = "<= 39 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "30 - 39"] = "<= 39 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "40 - 49"] = "40 - 79 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "50 - 59"] = "40 - 79 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "60 - 69"] = "40 - 79 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "70 - 79"] = "40 - 79 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "80 - 89"] = ">= 80 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "90 - 99"] = ">= 80 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "> 100"] = ">= 80 anos"
DadosP2$faixa_etaria[DadosP2$faixa_etaria == "N/I"] = NA
DadosP2$sexo[DadosP2$sexo == "I"] = NA
table(DadosP2$faixa_etaria, DadosP2$tipo_doenca, useNA = "no")
table(DadosP2$uf, DadosP2$tipo_doenca)
table(DadosP2$uf[DadosP2$uf == "RR"], DadosP2$tipo_doenca[DadosP2$uf == "RR"])
table(DadosP2$sexo, DadosP2$tipo_doenca, useNA = "no")

