open reducido.csv --raw |
from csv --flexible |
update "AÑO" {
  $in
  | into string
  | str replace "MAT_" ""
  | into int
} |
rename "NOMBRE INSTITUCIÓN" institucion |
rename "NOMBRE SEDE" sede |
rename "NOMBRE CARRERA" carrera |
rename "TOTAL MATRICULADOS" total |
rename "TOTAL MATRICULADOS PRIMER AÑO" primer_anio |
rename "AÑO" anio |
select institucion sede carrera anio total primer_anio |
save verificacion_datos.csv

