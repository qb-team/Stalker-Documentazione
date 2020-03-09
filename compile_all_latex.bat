echo "Compilazione Documentazione Esterna"
cd DocumentazioneEsterna

cd AnalisiDeiRequisiti
latexmk -pdf AnalisiDeiRequisiti.tex > NUL
latexmk -c > NUL
cd ..\PianoDiProgetto
latexmk -pdf PianoDiProgetto.tex > NUL
latexmk -c > NUL
cd ..\PianoDiQualifica
latexmk -pdf PianoDiQualifica.tex > NUL
latexmk -c > NUL

cd ..\VerbaliEsterni

cd VE_2019_12_16
latexmk -pdf VE_2019_12_16.tex > NUL
latexmk -c > NUL
cd ..\VE_2020_02_18
latexmk -pdf VE_2020_02_18.tex > NUL
latexmk -c > NUL
cd ..\VE_2020_02_27
latexmk -pdf VE_2020_02_27.tex > NUL
latexmk -c > NUL

echo "Compilazione Documentazione Interna"
cd ..\..\..\DocumentazioneInterna

cd NormeDiProgetto
latexmk -pdf NormeDiProgetto.tex > NUL
latexmk -c > NUL
cd ..\StudioDiFattibilita
latexmk -pdf StudioDiFattibilita.tex > NUL
latexmk -c > NUL

cd ..\VerbaliInterni

cd VI_2019_11_20
latexmk -pdf VI_2019_11_20.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_11_27
latexmk -pdf VI_2019_11_27.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_03\
latexmk -pdf VI_2019_12_03.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_06
latexmk -pdf VI_2019_12_06.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_10
latexmk -pdf VI_2019_12_10.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_13
latexmk -pdf VI_2019_12_10.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_18
latexmk -pdf VI_2019_12_18.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_01_29
latexmk -pdf VI_2020_01_29.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_21
latexmk -pdf VI_2020_02_21.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_24
latexmk -pdf VI_2020_02_24.tex > NUL
latexmk -c > NUL

cd ..\..\..

cd Glossario
latexmk -pdf Glossario.tex > NUL
latexmk -c > NUL

cd ..