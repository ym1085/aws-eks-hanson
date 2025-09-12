# AWS EKS Hands On

EKS 클러스터 환경 구성 후 Hands-On을 진행하기 위한 리포지토리 입니다.

## Hands On 목표

### 기본 클러스터 구성

- [ ]  eksctl EKS 클러스터 및 워커 노드 그룹 생성
- [ ]  kubectl get nodes, get pods -A 로 정상 동작 확인

### 네트워크 및 서비스

- [ ]  Pod, Deployment, Service (ClusterIP, NodePort, LoadBalancer) 배포
- [ ]  AWS Load Balancer Controller 설치 및 ALB 연동 확인
- [ ]  Ingress 리소스를 통해 ALB로 외부 요청 라우팅 실습

### 애플리케이션 배포

- [ ]  샘플 애플리케이션(Nginx, Spring Boot) 배포
- [ ]  Ingress Path 기반 라우팅 적용 (예: /app1, /app2)
- [ ]  ConfigMap / Secret 관리 및 Pod 환경변수 주입

### Helm 차트

- [ ]  Helm 설치 및 helm repo add / helm install 실습
- [ ]  Nginx Ingress Controller를 Helm으로 배포