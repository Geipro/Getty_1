<template>
  <div>
    <Navbar />
    <nav nav class="bg-primary">
      <div style="height: 30px">
        <router-link :to="{ name: 'LoanList' }" class="pa-5" style="color: white">
          신용대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          주택자금대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          예/적금 담보대출
        </router-link>
        <router-link :to="{ name: 'FileCheck' }" class="pa-5 offset-1" style="color: white">
          MY CAR
        </router-link>
      </div>
    </nav>
    <div class="container mt-5">
      <div class="text-left ml-10 mr-10" id="first">
          <div class="logo mt-3 mb-5">
              <h1>★ 대출 신청하기</h1>
          </div>
          <div class="row mt-3">
              <p class="text-secondary mr-3">신청 상품 : </p>
              <!-- 아래는 후에 '신청하기' 버튼 클릭 후 해당하는 이름 전달하기.  -->
              <h5> 싹편한 직장인 대출 </h5>
          </div>
          <div class="mt-3">
              <h5>02. 필요한 서류를 첨부해주세요.</h5>
              <h6 class="text-secondary offset-1" style="font-size: 0.8rem">파일 용량은 최대 200MB입니다.</h6>
              <h6 class="text-secondary offset-1" style="font-size: 0.8rem">업로드할 수 있는 확장자는 이미지 파일(jpg, png), PDF입니다.</h6>
          </div>
          <div class="ml-5 mt-4">
            <b-form>
              <div>
                <div class="mt-4 mb-3">
                    <h4>● 서류 1</h4>
                </div>
                <div class="custom-file form-check form-check-inline">
                  <label class="custom-file-label col-6" for="files">Choose file</label>
                  <input
                    type="file"
                    id="files"
                    ref="files"
                    accept="image/*"
                    multiple
                    v-on:change="handleFileUpload()"
                    enctype="multipart/form-data"
                  />
                </div>
              </div>
              <div>
                <div class="mt-4 mb-3">
                    <h4 class="text-left">● 서류 2</h4>
                </div>
                <div class="custom-file form-check form-check-inline">
                  <label class="custom-file-label col-6" for="customFile">Choose file</label>
                  <input type="file" class="custom-file-input" id="customFile2" style="width: 60%">
                  <!-- <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                  <label class="form-check-label" for="inlineCheckbox1">해당없음</label> -->
                </div>
              </div>
              <!-- <div>
                  <div class="mt-4 mb-3">
                      <h4>● 건강장기요양보혐료 납부확인서</h4>
                  </div>
                  <div class="custom-file form-check form-check-inline mb-5">
                    <label class="custom-file-label col-6" for="customFile">Choose file</label>
                    <input type="file" class="custom-file-input" id="customFile" style="width: 60%">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                    <label class="form-check-label" for="inlineCheckbox1">해당없음</label>
                  </div>
              </div> -->
            </b-form>
          </div>
          <div class="text-center mt-5">
            <!-- 제출하기 누르면 페이지 만들지 말고 alert으로 제출이 완료 되었습니다. 하기? js code 잘 안되네 -->
              <b-button class="mr-3" variant="primary" @click="submitClick">제출하기</b-button>
              <b-button @click="$router.go(-1)" class="ml-3" variant="dark">돌아가기</b-button>
          </div>
      </div>
    </div>
  </div>
</template>

<script>
// 1. 불러온 파일 data에 저장하고 이 걸 읽어서 textarea에 출력.
import Navbar from '@/components/MainPage/Navbar.vue'
import axios from 'axios';

    export default {
        name: 'ApplyDetail',
        components: {
          Navbar,
        },
        data: function () {
            return {
                credential: {
                    incomeCertificate: '',
                    insuranceCertificate: '',
                    paymentCertificate: ''
                },
                token:{
                  token : localStorage.getItem('Token')
                },
                files: "",
            }
        },

        methods:{
          submitClick : function(){
            // 파일 저장
            if (this.files) {
              var formData = new FormData();
              formData.append("files", this.files);

              for (var i = 0; i < this.files.length; i++) {
                formData.append("files", this.files[i]);
              }

              axios({
                method: "post",
                url: `http://j5a205.p.ssafy.io/user/file`,
                data: formData,
                headers: { 
                  "token" : this.token.token,
                  "Content-Type": "multipart/form-data" 
                },
              })
              .then(function (res) {
                console.log(res);
                console.log("SUCCESS!!");
              })
              .catch(function (err) {
                console.log(err);
              });
              this.$router.push({ name: "LoanList" });
            }
          },
          handleFileUpload(){
            this.files = this.$refs.files.files;
          }
        }
    }

</script>
