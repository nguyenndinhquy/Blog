+++
title = "Cách Xây Dựng một REST API Đơn Giản với Node.js và Express"
date = '2025-09-15'
draft = false
tags = ["nodejs", "javascript", "api", "tutorial", "vietnamese"]
+++

## Giới thiệu

REST API là một thành phần cơ bản của phát triển web hiện đại, cho phép các client (như một ứng dụng frontend) giao tiếp với một máy chủ. Node.js, kết hợp với framework Express, là một trong những cách phổ biến và hiệu quả nhất để xây dựng API.

Trong bài hướng dẫn này, chúng ta sẽ cùng nhau tạo một REST API đơn giản với một vài endpoint để quản lý danh sách người dùng.

## Điều kiện tiên quyết

- **Node.js và npm:** Đảm bảo bạn đã cài đặt Node.js. Bạn có thể tải nó từ [nodejs.org](https://nodejs.org/). npm (Node Package Manager) được bao gồm trong quá trình cài đặt.
- **Một trình soạn thảo mã:** Chẳng hạn như Visual Studio Code.
- **Một công cụ để kiểm thử API:** Như Postman, Insomnia, hoặc thậm chí là công cụ dòng lệnh `curl`.

## Bước 1: Khởi tạo Dự án của bạn

Đầu tiên, tạo một thư mục mới cho dự án của bạn và khởi tạo nó với npm. Thao tác này sẽ tạo một tệp `package.json` để quản lý các dependency của dự án.

```bash
mkdir my-api
cd my-api
npm init -y
```

Cờ `-y` chấp nhận tất cả các giá trị mặc định từ `npm init`.

## Bước 2: Cài đặt Express

Express là một framework ứng dụng web Node.js tối giản và linh hoạt, cung cấp một bộ tính năng mạnh mẽ cho các ứng dụng web và di động. Cài đặt nó bằng npm:

```bash
npm install express
```

## Bước 3: Tạo Máy chủ

Tạo một tệp mới có tên `index.js`. Đây sẽ là điểm khởi đầu cho ứng dụng của chúng ta.

Thêm đoạn mã sau để thiết lập một máy chủ Express cơ bản:

```javascript
const express = require('express');
const app = express();
const port = 3000;

// Middleware để phân tích cú pháp body của request dưới dạng JSON
app.use(express.json());

// "Cơ sở dữ liệu" trong bộ nhớ để minh họa
let users = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' }
];

// Định nghĩa một route đơn giản cho URL gốc
app.get('/', (req, res) => {
  res.send('Chào mừng đến với REST API đơn giản của chúng tôi!');
});

// Khởi động máy chủ
app.listen(port, () => {
  console.log(`Máy chủ đang chạy trên http://localhost:${port}`);
});
```

Chạy máy chủ của bạn bằng lệnh: `node index.js`. Nếu bạn mở trình duyệt và truy cập `http://localhost:3000`, bạn sẽ thấy thông báo chào mừng.

## Bước 4: Tạo các Endpoint API

Bây giờ, hãy thêm các endpoint để thực hiện các hoạt động CRUD (Tạo, Đọc, Cập nhật, Xóa) trên dữ liệu `users` của chúng ta.

### GET /users - Đọc tất cả người dùng

```javascript
app.get('/users', (req, res) => {
  res.json(users);
});
```

### GET /users/:id - Đọc một người dùng duy nhất

```javascript
app.get('/users/:id', (req, res) => {
  const id = parseInt(req.params.id);
  const user = users.find(u => u.id === id);

  if (user) {
    res.json(user);
  } else {
    res.status(404).send('Không tìm thấy người dùng');
  }
});
```

### POST /users - Tạo một người dùng mới

```javascript
app.post('/users', (req, res) => {
  const newUser = {
    id: users.length + 1, // Cách tạo ID đơn giản
    name: req.body.name
  };
  users.push(newUser);
  res.status(201).json(newUser);
});
```

## Bước 5: Kiểm thử API của bạn

Khởi động lại máy chủ của bạn (`node index.js`) và sử dụng một công cụ như Postman để kiểm thử các endpoint của bạn:

- **`GET http://localhost:3000/users`**
  - Sẽ trả về danh sách tất cả người dùng.

- **`GET http://localhost:3000/users/1`**
  - Sẽ trả về người dùng có ID 1 (Alice).

- **`POST http://localhost:3000/users`**
  - Đặt body thành `JSON` và cung cấp `{"name": "Charlie"}`.
  - Thao tác này sẽ trả về người dùng mới có ID 3 và thêm họ vào danh sách.

## Kết luận

Chúc mừng! Bạn đã xây dựng một REST API cơ bản nhưng hoạt động được với Node.js và Express. Đây là nền tảng để xây dựng một backend mạnh mẽ cho bất kỳ ứng dụng nào. Từ đây, bạn có thể mở rộng nó bằng cách:

- Kết nối với một cơ sở dữ liệu thực sự như MongoDB hoặc PostgreSQL.
- Thêm xử lý lỗi và xác thực dữ liệu.
- Triển khai xác thực và phân quyền.