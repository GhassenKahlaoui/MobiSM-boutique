<?php 


class Connexion { // Model Singeleton Design 

    private static $connection = "" ; 
    private static $host ="localhost" ; 
    private static $user = "root" ; 
    private static $password = ""; 
    private static $dbname ="tunisieprint";

    private function __construct() {}
    public static function getInstance() {
        if(self::$connection =="")
         
             self::$connection = mysqli_connect(self::$host,self::$user,self::$password,self::$dbname) ; 
        return self::$connection ;
         
    }


    public static function query($requette) {

        if(mysqli_query(self::$connection,$requette))
         return mysqli_query(self::$connection,$requette) ;
    } 
    public static function fetch_tab($query_exec) {
        return mysqli_fetch_row($query_exec);
    }
}

?>