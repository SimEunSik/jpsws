const uname = document.querySelector('.bname');
const title = document.querySelector('.btitle');
const con = document.querySelector('.bcontent');
const upw = document.querySelector('.bpw');
const lbtn = document.querySelector('.btn');
const update = document.update;
const write = document.write;
const reply = document.reply;
const delet = document.delet;

function updatef() {
	let update = document.update;
    if(uname.value.length === 0){
        alert('작성자는 필수 입력 입니다.')
        uname.focus();
    } else if(title.value.length === 0){
        alert('제목은 필수 입력 입니다.')
        title.focus();
    } else if (con.value.length === 0) {
        alert('내용은 필수 입력 입니다.')
        con.focus();
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
        upw.focus();
    } else {
    	update.submit();
    }
};

function writef() {
    if(uname.value.length === 0){
        alert('작성자는 필수 입력 입니다.')
        uname.focus();
    } else if(title.value.length === 0){
        alert('제목은 필수 입력 입니다.')
        title.focus();
    } else if (con.value.length === 0) {
        alert('내용은 필수 입력 입니다.')
        con.focus();
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
        upw.focus();
    } else {
    	write.submit();
    }
};

function replyf() {
    if(uname.value.length === 0){
        alert('작성자는 필수 입력 입니다.')
        uname.focus();
    } else if(title.value.length === 0){
        alert('제목은 필수 입력 입니다.')
        title.focus();
    } else if (con.value.length === 0) {
        alert('내용은 필수 입력 입니다.')
        con.focus();
    } else if (upw.value.length === 0) {
        alert('비밀번호는 필수 입력 입니다.')
        upw.focus();
    }
    	reply.submit();
};
function deletef() {
    if(upw.value.length === 0){
        alert('비밀번호는 필수 입력 입니다.')
        upw.focus();
    }
    	delet.submit();
};

function resetf() {
    document.querySelector('.bname').value = "";
    document.querySelector('.bemail').value = "";
    document.querySelector('.bhomepage').value = "";
    document.querySelector('.btitle').value = "";
    document.querySelector('.bcontent').value = "";
    document.querySelector('.bpw').value = "";
};