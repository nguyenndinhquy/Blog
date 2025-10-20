+++
title = "Các Khái Niệm JavaScript Cốt Lõi cho Lập Trình Web"
date = '2025-09-15'
draft = false
tags = ["javascript", "frontend", "webdev", "vietnamese"]
+++

## Giới thiệu về JavaScript

JavaScript là ngôn ngữ lập trình của web. Nếu HTML là bộ xương của một trang web và CSS là lớp da, thì JavaScript chính là bộ não, cho phép tạo ra sự tương tác, nội dung động và trải nghiệm người dùng linh hoạt. Nó chạy trực tiếp trong trình duyệt và là một kỹ năng thiết yếu cho bất kỳ nhà phát triển web nào.

## Biến và Kiểu Dữ Liệu

Biến được sử dụng để lưu trữ thông tin. Trong JavaScript hiện đại, bạn có ba cách để khai báo chúng:

- **`let`:** Dùng cho các biến có giá trị có thể thay đổi.
- **`const`:** Dùng cho các hằng số, có giá trị không thể gán lại.
- **`var`:** Cách khai báo biến cũ hơn. Nó có một số điểm khác biệt, vì vậy `let` và `const` thường được ưu tiên sử dụng.

```javascript
let message = "Chào thế giới!"; // Chuỗi (String)
const year = 2025; // Số (Number)
let isVisible = true; // Luận lý (Boolean)
let user = { name: "John", age: 30 }; // Đối tượng (Object)
let skills = ["HTML", "CSS", "JS"]; // Mảng (Array)
```

## Hàm (Functions)

Hàm là các khối mã có thể tái sử dụng. Chúng giúp bạn tổ chức logic và làm cho mã của bạn trở nên module hóa hơn.

```javascript
// Khai báo hàm (function declaration)
function greet(name) {
  return `Xin chào, ${name}!`;
}

// Hàm mũi tên (arrow function - cú pháp hiện đại hơn)
const add = (a, b) => {
  return a + b;
};

console.log(greet("Alice")); // Output: Xin chào, Alice!
console.log(add(5, 3));      // Output: 8
```

## Thao tác DOM

Mô hình Đối tượng Tài liệu (DOM - Document Object Model) là một giao diện lập trình cho các tài liệu web. Nó biểu diễn trang web để các chương trình có thể thay đổi cấu trúc, kiểu dáng và nội dung của tài liệu. JavaScript là chìa khóa để thao tác DOM.

**Ví dụ: Thay đổi nội dung văn bản**

Giả sử bạn có HTML sau:
`<h1 id="title">Chào mừng!</h1>`

Bạn có thể thay đổi nội dung của nó bằng JavaScript:

```javascript
// Chọn phần tử bằng ID của nó
const titleElement = document.getElementById("title");

// Thay đổi nội dung văn bản của nó
titleElement.textContent = "Xin chào, JavaScript!";
```

## Sự kiện (Events)

Sự kiện là các hành động xảy ra trong trình duyệt, chẳng hạn như người dùng nhấp vào một nút, gửi một biểu mẫu hoặc nhấn một phím. Bạn có thể "lắng nghe" các sự kiện này và kích hoạt một hàm để phản hồi.

**Ví dụ: Xử lý một cú nhấp chuột vào nút**

HTML:
`<button id="myButton">Nhấp vào tôi</button>`

JavaScript:
```javascript
const button = document.getElementById("myButton");

button.addEventListener("click", () => {
  alert("Nút đã được nhấp!");
});
```

## Kết luận

Những khái niệm cơ bản này là nền tảng của phát triển web hiện đại. Bằng cách nắm vững các biến, hàm, thao tác DOM và sự kiện, bạn sẽ sẵn sàng để tạo ra các trang web động và tương tác. Bước tiếp theo là khám phá các framework như React, Vue hoặc Angular để xây dựng các ứng dụng mạnh mẽ hơn nữa.