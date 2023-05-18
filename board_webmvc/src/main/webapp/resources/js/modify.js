/**
 *
 */
//삭제 버튼 클릭 시 operForm 보내기
// /board/remove 전송
const form = document.querySelector("#operForm");
const primary = document.querySelector(".btn-info");
const secondary = document.querySelector(".btn-secondary");
const danger = document.querySelector(".btn-danger");

danger.addEventListener("click", () => {
  form.action = "/board/remove";
  form.submit();
});
//목록 버튼 클릭 시 operForm 보내기
// /board/list 전송
// bno 제거
secondary.addEventListener("click", () => {
  form.firstElementChild.remove();
  form.action = "/board/list";
  form.submit();
});
