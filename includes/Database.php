<?php
class Database {
    public $user = "aab177_alex351";
    public $pass = "ELxdmaster28";
    public $host = "MYSQL8001.site4now.net";
    public $ddbb = "db_aab177_alex351";
    public static $db;
    public static $con;

    function __construct(){
        $this->user = "aab177_alex351";
        $this->pass = "ELxdmaster28";
        $this->host = "MYSQL8001.site4now.net";
        $this->ddbb = "db_aab177_alex351";
    }

    function connect(){
        self::$con = new mysqli($this->host, $this->user, $this->pass, $this->ddbb);

        if (self::$con->connect_error) {
            die("Connection failed: " . self::$con->connect_error);
        }

        return self::$con;
    }

    public static function getCon(){
        if(self::$con == null){
            self::$db = new Database();
            self::$con = self::$db->connect();
        }
        return self::$con;
    }
}
?>
