# DevSecOps.Edu.VN mần cái này

# sfoccount.sh - Source files of code count (SFOCCount)
# Đếm số lượng file của các ngôn ngữ lập trình 
# + tỉ lệ % của chúng trong tất cả các file của các ngôn ngữ lập trình

# Bản mã nguồn mở - cố ý viết rườm ra để tìm cách chỉnh lại cho gọn hơn, đẹp hơn, chạy nhanh hơn...
# Chương trình này để dạy trong Khóa học Lập trình Bash shell thực chiến cho Dev - DevOps - DevSecOps

# Lấy cảm hứng từ sloccount
# Inspired by Source Lines of Code Count (SLOCCount)
# https://dwheeler.com/sloccount/

#!/bin/bash

# Tên các ngôn ngữ sắp xếp theo A-Z
# A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y and Z

#  1. Ada (.ada, .ads, .adb)
#  2. Assembly (.s, .S, .asm)
#  3. awk (.awk)
#  4. Bourne shell and variants (.sh)

#  5. C (.c, .h, Makefile) - Tui thêm Makefile
#  --> bỏ .h ra do không biết là của C hay C++

#  6. C++ (.C, .cpp, .cxx, .cc)
#  7. C shell (.csh)
#  8. COBOL (.cob, .cbl) as of version 2.10
#  9. C# (.cs) as of version 2.11
# 10. Expect (.exp)
# 11. Fortran (.f)

# 12. Go (.go, .mod) - Tui thêm 

# 13. Haskell (.hs) as of version 2.11
# 14. Java (.java)
# 15. lex/flex (.l)
# 16. LISP/Scheme (.el, .scm, .lsp, .jl)
# 17. Modula-3 (.m3, .i3) as of version 2.07

# 18. Node.js/Javascript (.js) - Tui thêm

# 19. Objective-C (.m)
# 20. Pascal (.p, .pas)
# 21. Perl (.pl, .pm, .perl)

# 22. PHP (.php, .php[3456s], .phtml, .inc) as of version 2.05 - Tui thêm .phps, .phtml

# 23. Python (.py)
# 24. Ruby (.rb) as of version 2.09

# 25. Rust (.rs) - Tui thêm

# 26. sed (.sed)
# 27. SQL (.sql) - not normally shown.
# 28. TCL (.tcl, .tk, .itk)
# 29. Yacc/Bison (.y)

###############################################################################

#  1. Ada (.ada, .ads, .adb)

ada_count0=$(find $1 -type f -name "*.ada" | wc -l)
ada_count1=$(find $1 -type f -name "*.ads" | wc -l)
ada_count2=$(find $1 -type f -name "*.adb" | wc -l)
  
ada_total=`expr $ada_count0 + $ada_count1 + $ada_count2`

###############################################################################

#  2. Assembly (.s, .S, .asm)

assembly_count0=$(find $1 -type f -name "*.s"   | wc -l)
assembly_count1=$(find $1 -type f -name "*.S"   | wc -l)
assembly_count2=$(find $1 -type f -name "*.asm" | wc -l)

assembly_total=`expr $assembly_count0 + $assembly_count1 + $assembly_count2`

###############################################################################

#  3. awk (.awk)

awk_count0=$(find $1 -type f -name "*.awk" | wc -l)

awk_total=$awk_count0

###############################################################################

#  4. Bourne shell and variants (.sh)

bash_count0=$(find $1 -type f -name "*.sh" | wc -l)

bash_total=$bash_count0

###############################################################################

#  5. C (.c, .h, Makefile)

c_count0=$(find $1 -type f -name "*.c"      | wc -l)
c_count1=$(find $1 -type f -name "Makefile" | wc -l)

c_total=`expr $c_count0 + $c_count1`

###############################################################################

#  6. C++ (.C, .cpp, .cxx, .cc)

cpp_count0=$(find $1 -type f -name "*.C"   | wc -l)
cpp_count1=$(find $1 -type f -name "*.cpp" | wc -l)
cpp_count2=$(find $1 -type f -name "*.cxx" | wc -l)
cpp_count3=$(find $1 -type f -name "*.cc"  | wc -l)

cpp_total=`expr $cpp_count0 + $cpp_count1 + $cpp_count2 + $cpp_count3`

###############################################################################

#  7. C shell (.csh)

cshell_count0=$(find $1 -type f -name "*.csh" | wc -l)

cshell_total=$cshell_count0

###############################################################################

#  8. COBOL (.cob, .cbl) as of version 2.10

cobol_count0=$(find $1 -type f -name "${cobol_lang[0]}" | wc -l)
cobol_count1=$(find $1 -type f -name "${cobol_lang[1]}" | wc -l)

cobol_total=`expr $cobol_count0 + $cobol_count1`

###############################################################################

#  9. C# (.cs) as of version 2.11

csharp_count0=$(find $1 -type f -name "*.cs" | wc -l)

csharp_total=$csharp_count0

###############################################################################

# 10. Expect (.exp)

expect_count0=$(find $1 -type f -name "*.exp" | wc -l)

expect_total=$expect_count0

###############################################################################

# 11. Fortran (.f)

fortran_count0=$(find $1 -type f -name "*.f" | wc -l)

fortran_total=$fortran_count0

###############################################################################

# 12. Go (.go) - Tui thêm

go_count0=$(find $1 -type f -name "*.go" | wc -l)

go_count1=$(find $1 -type f -name "*.mod" | wc -l)

go_total=`expr $go_count0 + $go_count1`

###############################################################################

# 13. Haskell (.hs) as of version 2.11

haskell_count0=$(find $1 -type f -name "*.hs" | wc -l)

haskell_total=$haskell_count0

###############################################################################

# 14. Java (.java)

java_count0=$(find $1 -type f -name "*.java" | wc -l)

java_total=$java_count0

###############################################################################

# 15. lex/flex (.l)

lex_flex_count0=$(find $1 -type f -name "*.l" | wc -l)

lex_flex_total=$lex_flex_count0

###############################################################################

# 16. LISP/Scheme (.el, .scm, .lsp, .jl)

lisp_scheme_count0=$(find $1 -type f -name "*.el"  | wc -l)
lisp_scheme_count1=$(find $1 -type f -name "*.scm" | wc -l)
lisp_scheme_count2=$(find $1 -type f -name "*.lsp" | wc -l)
lisp_scheme_count3=$(find $1 -type f -name "*.jl"  | wc -l)

lisp_scheme_total=`expr $lisp_scheme_count0 + $lisp_scheme_count1 + $lisp_scheme_count2 + $lisp_scheme_count3`

###############################################################################

# 17. Modula-3 (.m3, .i3) as of version 2.07

modula3_count0=$(find $1 -type f -name "*.m3" | wc -l)
modula3_count1=$(find $1 -type f -name "*.i3" | wc -l)

modula3_total=`expr $modula3_count0 + $modula3_count1`

###############################################################################

# 18. Node.js/Javascript (.js) - Tui thêm

node_javascript_count0=$(find $1 -type f -name "*.js" | wc -l)

node_javascript_total=$node_javascript_count0

###############################################################################

# 19. Objective-C (.m)

objectivec_count0=$(find $1 -type f -name "*.m" | wc -l)

objectivec_total=$objectivec_count0

###############################################################################

# 20. Pascal (.p, .pas)

pascal_count0=$(find $1 -type f -name "*.p"   | wc -l)
pascal_count1=$(find $1 -type f -name "*.pas" | wc -l)

pascal_total=`expr $pascal_count0 + $pascal_count1`

###############################################################################

# 21. Perl (.pl, .pm, .perl)

perl_count0=$(find $1 -type f -name "*.pl"   | wc -l)
perl_count1=$(find $1 -type f -name "*.pm"   | wc -l)
perl_count2=$(find $1 -type f -name "*.perl" | wc -l)

perl_total=`expr $perl_count0 + $perl_count1 + $perl_count2`

###############################################################################

# 22. PHP (.php, .php[3456s], .phtml, .inc) as of version 2.05 - Tui thêm

php_count0=$(find $1 -type f -name "*.php"   | wc -l)
php_count1=$(find $1 -type f -name "*.php3"  | wc -l)
php_count2=$(find $1 -type f -name "*.php4"  | wc -l)
php_count3=$(find $1 -type f -name "*.php5"  | wc -l)
php_count4=$(find $1 -type f -name "*.php6"  | wc -l)
php_count5=$(find $1 -type f -name "*.phps"  | wc -l)
php_count6=$(find $1 -type f -name "*.phtml" | wc -l)
php_count7=$(find $1 -type f -name "*.inc"   | wc -l)

php_total=`expr $php_count0 + $php_count1 + $php_count2 + $php_count3 + $php_count4 + $php_count5 + $php_count6 + $php_count7`

###############################################################################

# 23. Python (.py)

python_count0=$(find $1 -type f -name "*.py" | wc -l)

python_total=$python_count0

###############################################################################

# 24. Ruby (.rb) as of version 2.09

ruby_count0=$(find $1 -type f -name "*.rb" | wc -l)

ruby_total=$ruby_count0

###############################################################################

# 25. Rust (.rs) - Tui thêm

rust_count0=$(find $1 -type f -name "*.rs" | wc -l)

rust_total=$rust_count0

###############################################################################

# 26. sed (.sed)

sed_count0=$(find $1 -type f -name "*.sed" | wc -l)

sed_total=$sed_count0

###############################################################################

# 27. SQL (.sql) - not normally shown.

sql_count0=$(find $1 -type f -name "*.sql" | wc -l)

sql_total=$sql_count0

###############################################################################

# 28. TCL (.tcl, .tk, .itk)

tcl_count0=$(find $1 -type f -name "*.tcl" | wc -l)
tcl_count1=$(find $1 -type f -name "*.tk"  | wc -l)
tcl_count2=$(find $1 -type f -name "*.itk" | wc -l)

tcl_total=`expr $tcl_count0 + $tcl_count1 + $tcl_count2`

###############################################################################

# 29. Yacc/Bison (.y)

yacc_bison_count0=$(find $1 -type f -name "*.y" | wc -l)

yacc_bison_total=$yacc_bison_count0

###############################################################################

# Tính tổng số file của các ngôn ngữ lập trình

TOTAL_FILES_LANGS=`expr $ada_total + $assembly_total + $awk_total + $bash_total + $c_total + $cpp_total + \
                        $cshell_total + $cobol_total + $csharp_total + $expect_total + $fortran_total + $go_total + \
			$haskell_total + $java_total + $lex_flex_total + $lisp_scheme_total + $modula3_total + \
			$node_javascript_total + $objectivec_total + $pascal_total + $perl_total + $php_total + \
			$python_total + $ruby_total + $rust_total + $sed_total + $sql_total + $tcl_total + $yacc_bison_total`

###############################################################################

# In ra thống kê số file của các NNLT + tỉ lệ của chúng

TOTAL_FILES=$(find $1 -type f | wc -l)

langs_rate=`echo "scale=6 ; ($TOTAL_FILES_LANGS/$TOTAL_FILES)*100" | bc`

echo -e "\nTiếng Việt"
echo    "Tổng số file của thư mục chứa mã nguồn:  $TOTAL_FILES"  
echo    "Tổng số file của các ngôn ngữ lập trình: $TOTAL_FILES_LANGS file(s) - ${langs_rate}%"

echo -e "\nEnglish"
echo    "Total                       files: $TOTAL_FILES"  
echo -e "Total programming languages files: $TOTAL_FILES_LANGS file(s) - ${langs_rate}%\n"

if [ $ada_total -gt 0 ] ; then
  ada_rate=`echo "scale=6 ; ($ada_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Ada:                $ada_total file(s) - ${ada_rate}%"
fi

if [ $assembly_total -gt 0 ] ; then
  assembly_rate=`echo "scale=6 ; ($assembly_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Assembly:           $assembly_total file(s) - ${assembly_rate}%"
fi

if [ $awk_total -gt 0 ] ; then
  awk_rate=`echo "scale=6 ; ($awk_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "AWK:                $awk_total file(s) - ${awk_rate}%"
fi

if [ $bash_total -gt 0 ] ; then
  bash_rate=`echo "scale=6 ; ($bash_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Bash:               $bash_total file(s) - ${bash_rate}%"
fi

if [ $c_total -gt 0 ] ; then
  c_rate=`echo "scale=6 ; ($c_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "C:                  $c_total file(s) - ${c_rate}%"
fi

if [ $cpp_total -gt 0 ] ; then
  cpp_rate=`echo "scale=6 ; ($cpp_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "C++:                $cpp_total file(s) - ${cpp_rate}%"
fi

if [ $cshell_total -gt 0 ] ; then
  cshell_rate=`echo "scale=6 ; ($cshell_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "C Shell:            $cshell_total file(s) - ${cshell_rate}%"
fi

if [ $cobol_total -gt 0 ] ; then
  cobol_rate=`echo "scale=6 ; ($cobol_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "COBOL:              $cobol_total file(s) - ${cobol_rate}%"
fi

if [ $csharp_total -gt 0 ] ; then
  csharp_rate=`echo "scale=6 ; ($csharp_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "C#:                 $csharp_total file(s) - ${csharp_rate}%"
fi

if [ $expect_total -gt 0 ] ; then
  expect_rate=`echo "scale=6 ; ($expect_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Expect:             $expect_total file(s) - ${expect_rate}%"
fi

if [ $fortran_total -gt 0 ] ; then
  fortran_rate=`echo "scale=6 ; ($fortran_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Fortran:            $fortran_total file(s) - ${fortran_rate}%"
fi

if [ $go_total -gt 0 ] ; then
  go_rate=`echo "scale=6 ; ($go_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Go:                 $go_total file(s) - ${go_rate}%"
fi

if [ $haskell_total -gt 0 ] ; then
  haskell_rate=`echo "scale=6 ; ($haskell_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Haskell:            $haskell_total file(s) - ${haskell_rate}%"
fi

if [ $java_total -gt 0 ] ; then
  java_rate=`echo "scale=6 ; ($java_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Java:               $java_total file(s) - ${java_rate}%"
fi

if [ $lex_flex_total -gt 0 ] ; then
  lex_flex_rate=`echo "scale=6 ; ($lex_flex_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "lex/flex:           $lex_flex_total file(s) - ${lex_flex_rate}%"
fi

if [ $lisp_scheme_total -gt 0 ] ; then
  lisp_scheme_rate=`echo "scale=6 ; ($lisp_scheme_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "LISP/Scheme:        $lisp_scheme_total file(s) - ${lisp_scheme_rate}%"
fi

if [ $modula3_total -gt 0 ] ; then
  modula3_scheme_rate=`echo "scale=6 ; ($modula3_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Modula-3:           $modula3_total file(s) - ${modula3_scheme_rate}%"
fi

if [ $node_javascript_total -gt 0 ] ; then
  node_javascript_rate=`echo "scale=6 ; ($node_javascript_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Node.js/Javascript: $node_javascript_total file(s) - ${node_javascript_rate}%"
fi

if [ $objectivec_total -gt 0 ] ; then
  objectivec_rate=`echo "scale=6 ; ($objectivec_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Objective-C:        $objectivec_total file(s) - ${objectivec_rate}%"
fi

if [ $pascal_total -gt 0 ] ; then
  pascal_rate=`echo "scale=6 ; ($pascal_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Pascal:             $pascal_total file(s) - ${pascal_rate}%"
fi

if [ $perl_total -gt 0 ] ; then
  perl_rate=`echo "scale=6 ; ($perl_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Perl:               $perl_total file(s) - ${perl_rate}%"
fi

if [ $php_total -gt 0 ] ; then
  php_rate=`echo "scale=6 ; ($php_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "PHP:                $php_total file(s) - ${php_rate}%"
fi

if [ $python_total -gt 0 ] ; then
  python_rate=`echo "scale=6 ; ($python_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Python:             $python_total file(s) - ${python_rate}%"
fi

if [ $ruby_total -gt 0 ] ; then
  ruby_rate=`echo "scale=6 ; ($ruby_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Ruby:               $ruby_total file(s) - ${ruby_rate}%"
fi

if [ $rust_total -gt 0 ] ; then
  rust_rate=`echo "scale=6 ; ($rust_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Rust:               $rust_total file(s) - ${rust_rate}%"
fi

if [ $sed_total -gt 0 ] ; then
  sed_rate=`echo "scale=6 ; ($sed_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "sed:                $sed_total file(s) - ${sed_rate}%"
fi

if [ $sql_total -gt 0 ] ; then
  sql_rate=`echo "scale=6 ; ($sql_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "SQL:                $sql_total file(s) - ${sql_rate}%"
fi

if [ $tcl_total -gt 0 ] ; then
  tcl_rate=`echo "scale=6 ; ($tcl_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "TCL:                $tcl_total file(s) - ${tcl_rate}%"
fi

if [ $yacc_bison_total -gt 0 ] ; then
  yacc_bison_rate=`echo "scale=6 ; ($yacc_bison_total/$TOTAL_FILES_LANGS)*100" | bc`
  echo "Yacc/Bison:         $yacc_bison_total file(s) - ${yacc_bison_rate}%"
fi

echo

### END ###
