<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Login extends MY_Controller {
    public function __construct(){
        parent::__construct();
    }

    public function logout(){
        $this->session->sess_destroy();
        header('Location: '.base_url());
    }

    public function act_login(){ 
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $pass = md5($password);

        $session     = $this->mlogin->login($email,$pass);
        if ($session) {
            $this->session->set_userdata('session_sop', true);
            $this->session->set_userdata('id', $session['id']);
            $this->session->set_userdata('email', $session['email']);
            $this->session->set_userdata('name', $session['name']);
            echo "success";
            return TRUE;
        } else {
            $this->alert->alertdanger("Cek Kembali Email dan Password anda !");
            return FALSE;
        }
    }

    public function loginGoogle(){
        $google_data = $this->google->validate();
        $data = $google_data;
        $email = $data['email'];        
        $session = $this->mlogin->googleLogin($email);
        if ($session) {
            $this->session->set_userdata('session_sop', true);
            $this->session->set_userdata('id', $session['id']);
            $this->session->set_userdata('email', $session['email']);
            $this->session->set_userdata('name', $session['name']);
            header("Location:".$this->session->userdata('url_session'));
        }else {
            $dataRegister = array(
                'name' => $data['name'],
                'email' => $data['email'],
                'status' => 'ENABLE',
                'created_at' => date('Y-m-d H:i:s'), 
            );
            $check = $this->mlogin->userAddProcess($dataRegister);
            if($check){
                $sessionLogin = $this->mlogin->googleLogin($email);
                $this->session->set_userdata('session_sop', true);
                $this->session->set_userdata('id', $sessionLogin['id']);
                $this->session->set_userdata('email', $sessionLogin['email']);
                $this->session->set_userdata('name', $sessionLogin['name']);
                header("Location:".$this->session->userdata('url_session'));
            }
        }
    }
}