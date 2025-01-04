k6 run --out influxdb=http://localhost:8086/myk6db spike-test.js #run k6 file <br>
<br>
influx -username "admin" -password "admin" \
        -execute "CREATE USER developer WITH PASSWORD 'developer';
        
import dashboard grafana k6 load test with id 2587 <br>
refer https://github.com/limbuu/k6-influxdb-grafana <br>

Chạy k6 300 VU, Max Thread = 200, accept count = 100, K6 báo lỗi read: connection reset by peer chạy ở máy cá nhân có thể do k đủ CPU để xử lý <br>
Nhưng tăng accept-count lên có thể giải quyết vì đưa vào queue sau đó xử lý từ từ chứ k đồng thời như thread.max