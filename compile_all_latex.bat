echo Compilazione Documentazione Esterna
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
cd ..\VE_2020_03_24
latexmk -pdf VE_2020_03_24.tex > NUL
latexmk -c > NUL
cd ..\VE_2020_03_31
latexmk -pdf VE_2020_03_31.tex > NUL
latexmk -c > NUL
cd ..\VE_2020_04_09
latexmk -pdf VE_2020_04_09.tex > NUL
latexmk -c > NUL

echo Compilazione Documentazione Interna
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
latexmk -pdf VI_2019_12_13.tex > NUL
latexmk -c > NUL
cd ..\VI_2019_12_18
latexmk -pdf VI_2019_12_18.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_01_29
latexmk -pdf VI_2020_01_29.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_15
latexmk -pdf VI_2020_02_15.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_21
latexmk -pdf VI_2020_02_21.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_24
latexmk -pdf VI_2020_02_24.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_02_26
latexmk -pdf VI_2020_02_26.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_03_16
latexmk -pdf VI_2020_03_16.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_04_05
latexmk -pdf VI_2020_04_05.tex > NUL
latexmk -c > NUL
cd ..\VI_2020_05_25
latexmk -pdf VI_2020_05_25.tex > NUL
latexmk -c > NUL

echo Compilazione Glossario
cd ..\..\..

cd Glossario
latexmk -pdf Glossario.tex > NUL
latexmk -c > NUL

cd ..

echo Compilazione Lettere di presentazione

cd LetteraPresentazioneRR
latexmk -pdf LetteraDiPresentazioneRR.tex > NUL
latexmk -c > NUL
cd ..\LetteraPresentazioneRP
latexmk -pdf LetteraDiPresentazioneRP.tex > NUL
latexmk -c > NUL
cd ..\LetteraPresentazioneRQ
latexmk -pdf LetteraDiPresentazioneRQ.tex > NUL
latexmk -c > NUL

cd ..

echo Copia dei file Documentazione Esterna
cd DocumentazioneEsterna

cd AnalisiDeiRequisiti
copy AnalisiDeiRequisiti.pdf ..\..\FileCompilati\.
cd ..\PianoDiProgetto
copy PianoDiProgetto.pdf ..\..\FileCompilati\.
cd ..\PianoDiQualifica
copy PianoDiQualifica.pdf ..\..\FileCompilati\.

cd ..\VerbaliEsterni

cd VE_2019_12_16
copy VE_2019_12_16.pdf ..\..\..\FileCompilati\.
cd ..\VE_2020_02_18
copy VE_2020_02_18.pdf ..\..\..\FileCompilati\.
cd ..\VE_2020_02_27
copy VE_2020_02_27.pdf ..\..\..\FileCompilati\.
cd ..\VE_2020_03_24
copy VE_2020_03_24.pdf ..\..\..\FileCompilati\.
cd ..\VE_2020_03_31
copy VE_2020_03_31.pdf ..\..\..\FileCompilati\.
cd ..\VE_2020_04_09
copy VE_2020_04_09.pdf ..\..\..\FileCompilati\.

echo Copia dei file Documentazione Interna
cd ..\..\..\DocumentazioneInterna

cd NormeDiProgetto
copy NormeDiProgetto.pdf ..\..\FileCompilati\.
cd ..\StudioDiFattibilita
copy StudioDiFattibilita.pdf ..\..\FileCompilati\.

cd ..\VerbaliInterni

cd VI_2019_11_20
copy VI_2019_11_20.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_11_27
copy VI_2019_11_27.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_12_03\
copy VI_2019_12_03.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_12_06
copy VI_2019_12_06.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_12_10
copy VI_2019_12_10.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_12_13
copy VI_2019_12_13.pdf ..\..\..\FileCompilati\.
cd ..\VI_2019_12_18
copy VI_2019_12_18.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_01_29
copy VI_2020_01_29.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_02_15
copy VI_2020_02_15.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_02_21
copy VI_2020_02_21.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_02_24
copy VI_2020_02_24.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_02_26
copy VI_2020_02_26.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_03_16
copy VI_2020_03_16.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_04_05
copy VI_2020_04_05.pdf ..\..\..\FileCompilati\.
cd ..\VI_2020_05_25
copy VI_2020_05_25.pdf ..\..\..\FileCompilati\.

echo Copia dei file Glossario
cd ..\..\..

cd Glossario
copy Glossario.pdf ..\FileCompilati\.

echo Copia dei file Lettera Presentazione
cd ..

cd LetteraPresentazioneRR
copy LetteraDiPresentazioneRR.pdf ..\FileCompilati\.
cd ..\LetteraPresentazioneRP
copy LetteraDiPresentazioneRP.pdf ..\FileCompilati\.
cd ..\LetteraPresentazioneRQ
copy LetteraDiPresentazioneRQ.pdf ..\FileCompilati\.