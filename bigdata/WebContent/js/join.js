const uid = document.querySelector('.uid');
const upw = document.querySelector('.upw');
const repw = document.querySelector('.repw');
const uname = document.querySelector('.uname');
const unic = document.querySelector('.unic');
const umail = document.querySelector('.umail');
const join_form = document.querySelector('#join_form');

function join_check() {
    if(uid.value.length === 0){
        alert('아이디는 필수 입력 입니다.')
        uid.focus();
        return;
    } else if(uid.value.length < 3){
        alert('아이디는 최소 3자 이상입니다.')
        uid.focus();
        return;
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
        upw.focus();
        return;
    } else if (repw.value.length === 0) {
        alert('비밀번호확인은 필수 입력 입니다.')
        repw.focus();
        return;
    } else if (upw.value !== repw.value) {
        alert('비밀번호와 비밀번호확인 값은 같아야 합니다.')
        upw.focus();
        return;
    } else if(uname.value.length === 0) {
        alert('이름은 필수 입력 입니다.')
        uname.focus();
        return;
    } else if(unic.value.length === 0) {
        alert('닉네임은 필수 입력 입니다.')
        unic.focus();
        return;
    } else if(umail.value.length === 0) {
        alert('E-mail은 필수 입력 입니다.')
        umail.focus();
        return;
    } 
    
    join_form.submit();
    
    
};
