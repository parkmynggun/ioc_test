# ioc_test (Vitis Project)

## 📌 프로젝트 개요
`ioc_test`는 Xilinx Vitis 환경에서 개발된 프로젝트입니다.  
하드웨어 플랫폼 및 소프트웨어 애플리케이션 테스트를 목적으로 합니다.

## 🛠 개발 환경
- IDE: [Xilinx Vitis](https://www.xilinx.com/products/design-tools/vitis.html)
- Target: (예: Zynq-7000 / ZCU102 / MicroBlaze 등 본인 보드 적기)
- OS: Ubuntu 20.04 / 22.04 (개발 환경에 맞게 수정)
- Toolchain: Vitis SDK 기본 제공 툴체인

## 📂 프로젝트 구조
ioc_test/
├── src/ # 소스 코드
├── include/ # 헤더 파일
├── system/ # 하드웨어 플랫폼 관련 파일 (XSA 등)
└── README.md # 프로젝트 설명
## 🚀 빌드 및 실행 방법
1. Vitis에서 워크스페이스 열기
2. `File -> Import -> Existing Project` 선택
3. `ioc_test` 디렉토리 선택
4. 빌드 (`Project -> Build All`)
5. 대상 보드에 다운로드 후 실행

## 📖 참고
- [Vitis 공식 문서](https://docs.xilinx.com/r/en-US/ug1416-vitis-documentation)
- [Xilinx Forums](https://forums.xilinx.com/)

---
