const lbtn = document.querySelector('.btn');
const uid = document.querySelector('.uid');
const upw = document.querySelector('.upw');

lbtn.addEventListener('click', function () {
    if(uid.value.length === 0){
        alert('아이디는 필수 입력 입니다.')
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
    } else {
        location.href="../index1.jsp"
    }
});
