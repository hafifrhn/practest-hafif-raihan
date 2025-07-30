# practest-hafif-raihan

Instruksi menjalankan project :
1. Docker sudah terinstall
2. Login ke GitHub Container Registry (GHCR)
3. Jalankan Container
docker run -d --name practest-hafif-raihan -p 8081:8080 ghcr.io/hafifrhn/practest-hafif-raihan:latest
4. Akses halaman HTML
curl http://localhost:8081/practest.html

Penjelasan Pipeline CI/CD :
A. Build_deploy.yml
-	Build Docker Image dari Dockerfile
-	Login ke GitHub Container Registry (GHCR)
-	Push Image ke GHCR
B. Deploy.yml
- Menjalankan container dari image GHCR (Pada Port 8081)
- Verifikasi container dan file HTML dapat diakses

Asumsi :
1. GHCR digunakan karena pada Docker terdapat banyak error dan belum menemukan hasilnya.
2. Port 8081 sesuai arahan
3. Alpine: 3.17.0
4. NginX dijalankan daemon off, agar container tidak langsung off
5. GHCR aktif pada akun GitHub
