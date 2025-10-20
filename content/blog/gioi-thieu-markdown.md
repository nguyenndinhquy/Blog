+++
title = "Markdown là gì? Hướng dẫn cơ bản cho người mới"
date = '2025-10-20'
draft = false
tags = ["markdown", "tutorial", "vietnamese"]
+++

## Markdown là gì?

Markdown là một ngôn ngữ đánh dấu nhẹ (lightweight markup language) được tạo ra bởi John Gruber vào năm 2004. Mục tiêu của nó là cho phép mọi người "viết bằng một định dạng văn bản thuần túy dễ đọc, dễ viết và có thể chuyển đổi thành HTML (hoặc nhiều định dạng khác) một cách hợp lệ."

Nói một cách đơn giản, Markdown cho phép bạn định dạng văn bản (in đậm, in nghiêng, tạo danh sách, v.v.) bằng cách sử dụng các ký tự đơn giản thay vì phải viết các thẻ HTML phức tạp. Nó được sử dụng rộng rãi trong việc viết tài liệu, bài blog, bình luận, và file `README` trên các nền tảng như GitHub, Reddit, và các trình soạn thảo văn bản hiện đại.

## Tại sao nên sử dụng Markdown?

*   **Đơn giản và dễ học:** Cú pháp của Markdown rất trực quan và dễ nhớ.
*   **Dễ đọc, dễ viết:** File Markdown là file văn bản thuần túy, bạn có thể đọc và hiểu nội dung ngay cả khi không có trình biên dịch.
*   **Linh hoạt:** Dễ dàng chuyển đổi sang nhiều định dạng khác như HTML, PDF, Word.
*   **Tập trung vào nội dung:** Bạn có thể tập trung vào việc viết nội dung mà không bị phân tâm bởi việc định dạng phức tạp.

## Cú pháp Markdown cơ bản

Dưới đây là một số cú pháp phổ biến nhất bạn cần biết:

### 1. Tiêu đề (Headings)

Sử dụng dấu `#` ở đầu dòng để tạo tiêu đề. Số lượng dấu `#` tương ứng với các cấp độ tiêu đề (từ `<h1>` đến `<h6>`).

```markdown
# Đây là tiêu đề cấp 1
## Đây là tiêu đề cấp 2
### Đây là tiêu đề cấp 3
```

### 2. Nhấn mạnh văn bản (Emphasis)

*   **In đậm:** Sử dụng hai dấu `**` hoặc `__`.
    `**văn bản in đậm**` → **văn bản in đậm**
*   **In nghiêng:** Sử dụng một dấu `*` hoặc `_`.
    `*văn bản in nghiêng*` → *văn bản in nghiêng*
*   **Gạch ngang:** Sử dụng hai dấu `~~`.
    `~~văn bản gạch ngang~~` → ~~văn bản gạch ngang~~

### 3. Danh sách (Lists)

*   **Danh sách không có thứ tự:** Sử dụng dấu `*`, `+`, hoặc `-`.
    ```markdown
    * Mục 1
    * Mục 2
      * Mục 2a
    ```
*   **Danh sách có thứ tự:** Sử dụng số và dấu chấm.
    ```markdown
    1.  Mục đầu tiên
    2.  Mục thứ hai
    ```

### 4. Liên kết (Links)

Cú pháp: `[Văn bản hiển thị](URL)`

```markdown
[Trang chủ Google](https://www.google.com)
```

### 5. Hình ảnh (Images)

Cú pháp tương tự như liên kết nhưng có thêm dấu `!` ở đầu: `![Văn bản thay thế](URL hình ảnh)`

```markdown
![Logo Markdown](https://markdown-here.com/img/icon256.png)
```

### 6. Trích dẫn (Blockquotes)

Sử dụng dấu `>` ở đầu dòng.

```markdown
> Đây là một đoạn trích dẫn.
```

### 7. Code

*   **Inline code:** Sử dụng dấu backtick `` ` ``.
    `Đây là một đoạn `code` inline.`
*   **Code block:** Sử dụng ba dấu backtick ``` hoặc thụt lề 4 dấu cách.
    ```javascript
    function hello() {
      console.log("Hello, world!");
    }
    ```

## Kết luận

Markdown là một công cụ cực kỳ hữu ích và hiệu quả cho bất kỳ ai làm việc với văn bản trên máy tính. Với cú pháp đơn giản và trực quan, bạn có thể bắt đầu sử dụng nó ngay lập tức để cải thiện quy trình làm việc của mình.
