/**
 *
 */
document.querySelector("#uploadBtn").addEventListener("click", () => {
  //FormData 객체 생성
  const formData = new FormData();

  //file 요소 가져오기
  let inputFiles = document.querySelector("#uploadFile").files;
  console.log(inputFiles);

  //가져온 file 요소를 formData 추가
  for (let i = 0; i < inputFiles.length; i++) {
    formData.append("uploadFile", inputFiles[i]);
  }

  //비동기 - formData전송
  fetch("/uploadAjax", {
    method: "post",
    body: formData,
  })
    .then((response) => {
      if (!response.ok) {
        throw new Error("파일 업로드 실패");
      }
      return response.json();
    })
    .then((data) => {
      console.log(data);
      showUploadedFile(data);
    })
    .catch((error) => console.log(error));
});

function showUploadedFile(uploadResultArr) {
  //도착한 데이터(파일 업로드 정보) 에서 파일 이름을 li 태그 만들어서 보여주기
  let str = "";
  uploadResultArr.forEach((item) => {
    //fileType 이 true 라면 image 파일이라면 썸네일 이미지 보여주기
    if (item.fileType) {
      //썸네일 이미지 경로 생성
      let fileCallpath = encodeURIComponent(
        item.uploadPath + "\\s_" + item.uuid + "_" + item.fileName
      );

      //str += "<li><img src='/display?fileName=" + fileCallpath + "'></li>";

      //썸네일 이미지 클릭 ==> 원본 이미지 보여주기
      let oriFileCallpath = encodeURIComponent(
        item.uploadPath + "\\" + item.uuid + "_" + item.fileName
      );

      str += "<li><div>";
      str +=
        "<a href='/display?fileName=" +
        oriFileCallpath +
        "' data-lightbox='image'>";
      str += "<img src='/display?fileName=" + fileCallpath + "'></a>";
      str +=
        "<span data-file='" + fileCallpath + "' data-type='image'> X </span>";
      str += "</div></li>";
    } else {
      //txt 파일
      str += "<li>" + item.fileName + "</li>";
    }
  });
  document.querySelector(".uploadResult ul").innerHTML = str;
}
