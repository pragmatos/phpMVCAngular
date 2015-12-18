<?php
class User {

    public function isGuest(){
        if(isset($_SESSION['user'])){
            return false;
        }
        else {
            return true;
        }
    }
    public function isUser(){
        if(isset($_SESSION['user'])){
            return true;
        }
        else {
            return false;
        }
    }
    public function isAdmin(){
        if($_SESSION['user']['role'] == 'admin'){
            return true;
        }
        else{
            return false;
        }
    }
    public function Name(){
        return $_SESSION['user']['name'];
    }
    public function logout(){
        session_destroy();
    }
    public function Auth($user){
        $_SESSION['user']=$user;
    }

}

