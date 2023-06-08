/**
 *
 */
fetch("/board/getAttachList?bno=" + bno)
  .then((response) => {
    if (!response.ok) {
      throw new Error("첨부파일 없음");
    }
    return response.json();
  })
  .then((data) => {
    console.log(data);
    showUploadedFile(data);
  })
  .catch((error) => console.log(error));

//수정 버튼 클릭 해 폼 submit 이 일어나면
//첨부파일 목록 수집하기
const modifyForm = document.querySelector("#modifyForm");

modifyForm.addEventListener("submit", (e) => {
  e.preventDefault();

  const lis = document.querySelectorAll(".uploadResult ul li");

  let str = "";
  lis.forEach((ele, idx) => {
    str +=
      "<input type='hidden' name='attachList[" +
      idx +
      "].uuid' value='" +
      ele.dataset.uuid +
      "'/>";
    str +=
      "<input type='hidden' name='attachList[" +
      idx +
      "].uploadPath' value='" +
      ele.dataset.path +
      "'/>";
    str +=
      "<input type='hidden' name='attachList[" +
      idx +
      "].fileName' value='" +
      ele.dataset.filename +
      "'/>";
    str +=
      "<input type='hidden' name='attachList[" +
      idx +
      "].fileType' value='" +
      ele.dataset.type +
      "'/>";
  });

  //수집한 태그 폼에 추가
  modifyForm.insertAdjacentHTML("beforeend", str);
  console.log("수정폼");
  console.log(modifyForm);

  modifyForm.submit();
});

//수정, 삭제 클릭 시 동작하는 폼

const form = document.querySelector("#operForm");
const primary = document.querySelector(".btn-info");
const secondary = document.querySelector(".btn-secondary");
const danger = document.querySelector(".btn-danger");

if (danger) {
  danger.addEventListener("click", () => {
    form.action = "/board/remove";
    form.submit();
  });
}
//목록 버튼 클릭 시 operForm 보내기
// /board/list 전송
// bno 제거
secondary.addEventListener("click", () => {
  form.firstElementChild.remove();
  form.action = "/board/list";
  form.submit();
});
