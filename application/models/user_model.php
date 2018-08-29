<?php 

class user_model extends CI_Model{
    
    public function UserPost($data){
        $this->db->insert('users',$data);
        return $this->db->insert_id();
    }

    public function UserGet($id){
        if($id!='')
        $this->db->where('username',$id);
        
        $res=$this->db->get('users');
        return $res->result_array();
    }

}
