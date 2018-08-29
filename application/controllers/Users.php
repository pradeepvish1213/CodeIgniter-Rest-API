<?php

include APPPATH .'libraries/Format.php';
include APPPATH .'libraries/REST_Controller.php';

class Users extends REST_Controller{
    
    public function index_get($id=''){
        $users=$this->user_model->UserGet($id);
        $this->set_response($users, REST_Controller::HTTP_OK);
    }

    public function user_post(){
        $data = array(
            'name' => $this->post('name'),
            'username' =>$this->post('username'),
            'password' => Sha1($this->post('password'))
        );
        $result=$this->user_model->UserPost($data);
        $this->set_response($result, REST_Controller::HTTP_OK);
    }



}


?>