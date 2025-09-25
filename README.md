# AWS EKS Hands On

> EKS 클러스터 생성 후 Hands-On을 진행하기 위한 리포지토리 입니다.

## 1단계: 네트워크 및 서비스
- [x] Nginx Pod 배포 후 로컬 접근
- [x] Service (ClusterIP) 배포 → 로컬 접근 확인
- [x] Service (NodePort) 배포 → 외부 접근 확인
- [x] Service (ALB) 배포 → 외부 접근 확인
- [x] AWS Load Balancer Controller 설치 및 ALB 연동 확인
- [x] Ingress 리소스를 통해 ALB로 Nginx 외부 요청 라우팅 실습
- [x] Deployment 구성

## 2단계: 애플리케이션 배포
- [x] Deployment(Pod) + Ingress Path 기반 Nginx/Apache 라우팅 테스트 (`/app1`, `/app2`)
- [x] ConfigMap / Secret 관리 → Pod 환경변수 주입

## 3단계: 운영 레벨 실습
- [ ] HPA (Horizontal Pod Autoscaler) → CPU 부하에 따라 Pod 자동 확장
- [ ] Cluster Autoscaler → 노드 자동 증설/축소 확인
- [ ] Rolling Update & Rollback → 무중단 배포 및 빠른 롤백
- [ ] Liveness / Readiness Probe → Pod 헬스체크 기반 트래픽 제어
- [ ] Pod Disruption Budget(PDB) → 무중단 배포 보장

## 4단계: 보안/권한 관리
- [ ] RBAC → 네임스페이스 단위 권한 제어
- [ ] IRSA (IAM Roles for Service Account) → 특정 Pod에만 S3 접근 권한 부여
- [ ] NetworkPolicy (Calico/Cilium) → Pod 간 통신 제어

## 5단계: 배포 자동화 & Mesh
- [ ] Helm 고급 활용 → Values.yaml 기반 환경별(dev/stg/prod) 배포
- [ ] ArgoCD (GitOps) → Git push 시 자동 배포
- [ ] Service Mesh (Istio/Linkerd) → 서비스 간 mTLS, Canary 배포(10% 트래픽 분리)
- [ ] Chaos Engineering (LitmusChaos/Gremlin) → 장애 주입 후 복원력 테스트

## 6단계: Observability
- [ ] Prometheus + Grafana → Pod/Node CPU·Memory 모니터링 대시보드 구축
- [ ] FluentBit + CloudWatch Logs → Pod 로그 수집 및 분석
- [ ] Jaeger / Tempo → 서비스 간 호출 추적 (Distributed Tracing)