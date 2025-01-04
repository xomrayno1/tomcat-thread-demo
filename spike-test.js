// spike-test.js
import http from 'k6/http';
import {check} from 'k6';

const BASE_URL = "http://localhost:8081";

export const options = {
    scenarios: {
        spike: {
            executor: 'constant-vus',
            vus: 300,
            duration: '1s',
        },
    },
};

export default function () {
    const res = http.get(`http://localhost:8081/hello`);
    check(res, {'is status 200': (r) => r.status == 200});
};