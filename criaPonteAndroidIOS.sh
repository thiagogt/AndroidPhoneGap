#!bin/bash
fn_interpreta_resposta(){

    echo "Esses sao os caminhos? "
    echo "Origem: " $origem;
    echo "Destino: "  $destino;
    echo "";
    echo "[S/n]";
    read resposta;
if [ "$resposta" == "s" -o "$resposta" == "" -o "$resposta" == "S" ]
then
    fn_cria_links_simbolicos
elif [ "$resposta" == "n" ]
then
    fn_define_origem_destino
else
    echo "DIGITE APENAS s ou n !!";
    fn_interpreta_resposta
    
    
fi
}

fn_define_origem_destino(){
echo ""
echo ""
echo "                 --------IMPORTANTE----------"
echo " NAO CRIE LINKS SIMBOLICOS DE OUTROS PROJETOS PARA OS PROJETOS XCODES"
ECHO "            POIS ELE DARA UM ERRO: INVALID ARGUMENT"
echo ""
echo ""
echo "Path completo da Origem ate a pasta www: ";
read origem;
Echo ""
echo "Path completo do Destino ate a pasta assets: ";
read destino;
echo ""
fn_interpreta_resposta
}

fn_ls(){
ls "$destino"
}

fn_cria_links_simbolicos(){

ln -s  $origem/www/index.html  $destino/assets/www
ln -s  $origem/www/css  $destino/assets/www;
ln -s  $origem/www/config.xml  $destino/assets/www;
ln -s  $origem/www/img  $destino/assets/www;
ln -s  $origem/www/js $destino/assets/www;
ln -s  $origem/www/res  $destino/assets/www;
ln -s  $origem/www/spec  $destino/assets/www;
ln -s  $origem/www/spec.html  $destino/assets/www;

}

fn_define_origem_destino
