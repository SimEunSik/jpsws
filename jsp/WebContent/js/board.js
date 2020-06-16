const uname = document.querySelector('.uname');
const title = document.querySelector('.title');
const con = document.querySelector('.content');
const upw = document.querySelector('.upw');
const lbtn = document.querySelector('.lbtn');

const del = document.querySelector('.delpw');
const dbtn = document.querySelector('.dbtn');

lbtn.addEventListener('click', function () {
    if(uname.value.length === 0){
        alert('작성자는 필수 입력 입니다.')
        input.focus();
    } else if(title.value.length === 0){
        alert('제목은 필수 입력 입니다.')
        input.focus();
    } else if (con.value.length === 0) {
        alert('내용은 필수 입력 입니다.')
        input.focus();
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
        input.focus();
    } else {
        location.href="list.jsp"
    }
});

function deletef() {
    if(del.value.length === 0){
        alert('비밀번호는 필수 입력 입니다.')
        input.focus();
    } else {
        location.href="list.jsp"
    }
};

function updatef() {
    document.querySelector('.uname').value = "";
    document.querySelector('.umail').value = "";
    document.querySelector('.upage').value = "";
    document.querySelector('.title').value = "";
    document.querySelector('.content').value = "";
    document.querySelector('.upw').value = "";
};