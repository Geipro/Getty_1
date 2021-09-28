<template>
    <div class="text-left  ml-10 mr-10" id="first">
        <div class="logo mt-3 mb-3">
            <h1>★ 대출 신청하기</h1>
        </div>
        <div class="col-mb-8 mt-3 mb-3">
            <p class="text-secondary">신청 상품 : </p>
            <!-- 아래는 후에 '신청하기' 버튼 클릭 후 해당하는 이름 전달하기.  -->
            <h3> 싹편한 직장인 대출 </h3>
        </div>
        <div class="mt-3">
            <h5>02. 필요한 서류를 첨부해주세요.</h5>
            <p class="text-secondary">파일 용량은 최대 200MB입니다.</p>
            <p class="text-secondary">업로드할 수 있는 확장자는 이미지 파일(jpg, png), PDF입니다.</p>
        </div>
        <div class="ml-5 mt-2">
            <div>
                <div>
                    <h4>● 소득 및 재직 확인서</h4>
                </div>
                <div>
                    <b-button variant="secondary">파일 찾아보기</b-button>
                    <v-text>재직증명서.pdf</v-text>
                    <b-check value="true">해당없음</b-check>
                </div>
            </div>
            <div>
                <div>
                    <h4 class="text-left">● 건강보험자격득실 확인서</h4>
                </div>
                <div>
                    <b-button variant="secondary">파일 찾아보기</b-button>
                    <v-text>선택한 파일 없음</v-text>
                    <b-check value="true">해당없음</b-check>
                </div>
            </div>
            <div>
                <div>
                    <h4>● 건강장기요양보혐료 납부확인서</h4>
                </div>
                <div>
                    <b-button variant="secondary">파일 찾아보기</b-button>
                    <v-text>선택한 파일 없음</v-text>
                    <b-check value="true">해당없음</b-check>
                </div>
            </div>
        </div>
        <div class="text-center">
            <b-button class="mr-3" variant="primary">제출하기</b-button>
            <b-button class="ml-3" variant="dark">돌아가기</b-button>
        </div>
    </div>
</template>

<script>
// 1. 불러온 파일 data에 저장하고 이 걸 읽어서 textarea에 출력.
    export default {
        data: function () {
            return {
                credential: {
                    incomeCertificate: '',
                    insuranceCertificate: '',
                    paymentCertificate: ''
                }
            }
        },
    }
</script>