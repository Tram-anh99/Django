# Học Django từ W3School
![image](https://github.com/user-attachments/assets/796d1058-609c-4789-8776-102de5bd8565)
# Hướng dẫn Xuất và Nhập Môi Trường Ảo Python

## 1. Cài đặt Python

### Bước 1: Tải xuống Python

Truy cập [trang chủ Python](https://www.python.org/downloads/) và tải phiên bản mới nhất phù hợp với hệ điều hành của bạn.

### Bước 2: Cài đặt Python

- Trên **Windows**: Chạy tệp `.exe` đã tải xuống và chọn tùy chọn **Add Python to PATH** trước khi nhấn **Install Now**.
- Trên **macOS/Linux**: Sử dụng trình quản lý gói tương ứng:
  - macOS (Homebrew):
    ```sh
    brew install python
    ```
  - Ubuntu/Debian:
    ```sh
    sudo apt update && sudo apt install python3
    ```
  - Fedora:
    ```sh
    sudo dnf install python3
    ```

### Bước 3: Kiểm tra cài đặt

Sau khi cài đặt xong, kiểm tra phiên bản Python bằng lệnh:

```sh
python --version
```
hoặc
```sh
python3 --version
```

---

## 2. Xuất môi trường ảo

### Bước 1: Kích hoạt môi trường ảo
Trước tiên, bạn cần kích hoạt môi trường ảo:

- **Windows (Cmd/Powershell):**
  ```sh
  .\venv\Scripts\activate
  ```
- **macOS/Linux:**
  ```sh
  source venv/bin/activate
  ```

### Bước 2: Xuất danh sách các gói đã cài đặt
Sau khi kích hoạt môi trường ảo, chạy lệnh sau để lưu danh sách các gói vào tệp `requirements.txt`:

```sh
pip freeze > requirements.txt
```

Tệp `requirements.txt` sẽ chứa danh sách tất cả các gói Python đã cài đặt trong môi trường hiện tại.

---

## 3. Nhập lại môi trường ảo trên hệ thống khác

### Bước 1: Tạo môi trường ảo mới

```sh
python -m venv venv
```

### Bước 2: Kích hoạt môi trường
- **Windows:**
  ```sh
  .\venv\Scripts\activate
  ```
- **macOS/Linux:**
  ```sh
  source venv/bin/activate
  ```

### Bước 3: Cài đặt các gói từ `requirements.txt`

```sh
pip install -r requirements.txt
```

Sau khi hoàn thành các bước trên, môi trường ảo của bạn sẽ được khôi phục với đầy đủ các gói đã cài đặt trước đó.

---

## 4. Cài đặt Django

### Bước 1: Cài đặt Django bằng pip

Sau khi đã kích hoạt môi trường ảo, chạy lệnh sau để cài đặt Django:

```sh
pip install django
```

### Bước 2: Kiểm tra cài đặt

Sau khi cài đặt xong, kiểm tra phiên bản Django bằng lệnh:

```sh
python -m django --version
```

### Bước 3: Tạo một dự án Django mới

```sh
django-admin startproject myproject
```

Thay `myproject` bằng tên dự án của bạn. Sau đó, di chuyển vào thư mục dự án:

```sh
cd myproject
```

### Bước 4: Chạy máy chủ phát triển

```sh
python manage.py runserver
```

Truy cập `http://127.0.0.1:8000/` trên trình duyệt để xem trang mặc định của Django.
# Django Tutorial

## 1. Django Home

[Trang chủ Django](https://www.djangoproject.com/)

## 2. Django Intro

Django là một framework web mạnh mẽ dựa trên Python, hỗ trợ phát triển nhanh và tuân theo mô hình MVC/MVT.

## 3. Django Get Started

### Cài đặt Django:

```sh
pip install django
```

### Kiểm tra phiên bản:

```sh
django-admin --version
```

## 4. Create Virtual Environment

### Tạo môi trường ảo:

```sh
python -m venv myenv
```

### Kích hoạt môi trường:

- **Windows:**
  ```sh
  myenv\Scripts\activate
  ```
- **macOS/Linux:**
  ```sh
  source myenv/bin/activate
  ```

## 5. Install Django

Cài đặt Django trong môi trường ảo:

```sh
pip install django
```

## 6. Django Create Project

Tạo một dự án mới:

```sh
django-admin startproject myproject
cd myproject
python manage.py runserver
```

## 7. Django Create App

Tạo một ứng dụng trong dự án:

```sh
python manage.py startapp myapp
```

Thêm `myapp` vào `INSTALLED_APPS` trong `settings.py`:

```python
INSTALLED_APPS = [
    ...
    'myapp',
]
```

## 8. Django Views

Tạo views trong `myapp/views.py`:

```python
from django.http import HttpResponse

def home(request):
    return HttpResponse("Hello, Django!")
```

Khai báo route trong `myapp/urls.py`:

```python
from django.urls import path
from .views import home

urlpatterns = [
    path('', home),
]
```

## 9. Django URLs

Khai báo URL trong `myproject/urls.py`:

```python
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('myapp.urls')),
]
```

## 10. Django Templates

Tạo thư mục `templates/` và file `index.html`:

```html
<!DOCTYPE html>
<html>
<body>
    <h1>Welcome to Django</h1>
</body>
</html>
```

Trong `views.py`, render template:

```python
from django.shortcuts import render

def home(request):
    return render(request, 'index.html')
```

## 11. Django Models

Khai báo model trong `models.py`:

```python
from django.db import models

class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.FloatField()
```

Chạy lệnh:

```sh
python manage.py makemigrations
python manage.py migrate
```

## 12. Django Insert Data

Thêm dữ liệu trong `views.py`:

```python
from myapp.models import Product

def add_product():
    Product.objects.create(name="Laptop", price=1200.00)
```

Hoặc sử dụng shell:

```sh
python manage.py shell
```

```python
from myapp.models import Product
p = Product(name="Phone", price=800.00)
p.save()
```

## 13. Django Update Data

Cập nhật dữ liệu:

```python
p = Product.objects.get(id=1)
p.price = 1000.00
p.save()
```

## 14. Django Delete Data

Xóa dữ liệu:

```python
p = Product.objects.get(id=1)
p.delete()
```

## 15. Django Update Model

Thêm trường mới vào model:

```python
class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.FloatField()
    stock = models.IntegerField()
```

Sau khi chỉnh sửa, chạy lệnh:

```sh
python manage.py makemigrations
python manage.py migrate
```


