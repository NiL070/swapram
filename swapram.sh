#!/usr/bin/env bash
# Obfuscated bash script (generated oleh protect_bash.py)

python3 - "$@" << 'PY'
import base64, gzip, os, sys, tempfile, stat, subprocess

b64_data = """H4sIAJ82LGkC/9VX3W7aShC+91NMXSR+KuNfDA2iEtAkJxdAiqOTiySqjL0GK/6TvYT2cJDOI1SVIh3p3PXR+iRn1hiwG9KkuUmzQoiZnfl25pvd2eX1K3HiBuLETGbca+g8dqDth7lrXYNB6DyCv8GwYjeimTgwA3NKYjQ6tF3qhgEcgEHNiUe2ij/luoTz3TmdkRhwfkhuSOyHMTGMP3DivUkJAJtQFFGWRUVSGqiu9KvQD6PPsTudUciUj4+aO+2UL8mF1FYbfpnroSCpKhN1FI93ooLieCfKKJ5notxWmygO+2sk/IkRHM0DK03LmIUL6M/jmARIxsKMuAQ1Cf6oVGHJsYwsnP3INJ1SZRqTCIQF8CJTOK5HeBCjOLRSOUFezcU1lJdR7CJeSV2Vq0WMj/4EYSpbGUSQJUWrVrnUznXgAvhS3pwHYUpBgqs2IPVBasZGOp1Qk86TDl9aHq+6mNENKS2H/RWfWhEvIfeZj1fDkMIdF8ddx0GsWQgCwVCW56s8PVhftlZpmQ9xBYNeCgKV0jK30KrK79B4nltxHJuNTT8l1/KIGXPbpbA6WNbvt1+/3375DT63683k87sI4fIQd5fWbKuSDz8O47x7CuPuAO4O5pbH2WT67++R6X93M92dHFZ0llXvc+HE/8zljHhkikXGvTKjNEoORJHWfSLS0HbcT7rehLvePDuVtVphq50ETgiV7lnXgOFo0BuNQa7WatsDyuUKc7FZHWn955uc4V8BdG0bGrIy6LHS8Pd6KEWPpt56yEMtesjHD9hrRXvlIftG0V57yF7f2b93k7R1pyQWne73l3b+PRPvCRqCT4J55sDvLfRpTJIEG1afxt6bPlwB4sBZKBx+cqmwvmCKlUaYmJg2CBHwBu4Si8JRHPowilgzZlAyCKAj0gFghKzKcmGPWGZCoJTqwQ04ufpjE7lI29PJ8Gi0bkhXGRtuMIXQs1PIer3Op40odBwQBNPzuNgHwYFtU/8ZXh8zoAwuIItsa21BsVCu0xFtciP+ReIQQhQ2mDBJOqzVgxXOA9ppKJrSanH+9foW2K5szfzQBl2Scro01iCvIMihC2XxcqsT7TKIhFqig713ktG9WzxdJf2yiWPOPZrglSLx8O5d3ivxCN5vyqZLc+02xynPzfH6MD6F42ZL11TlBXCsPjfHrH09hWFZ0lqNpv4CKNaem2LliRQr0tum3HgJu7jx3BRrT6RYk99qqqS9AIr1X6LYeBy9j0xg/2rpIyN7cdiv+L1RS5uo2Ysi1dT25jFeHY7Ho/EG+iS4MT3Xzl4H+7FJYlq5/xXc/ymDppcfDwAA"""

data = base64.b64decode(b64_data.encode())
script = gzip.decompress(data)

# Tulis ke file sementara
with tempfile.NamedTemporaryFile(delete=False) as f:
    f.write(script)
    tmp_path = f.name

# Bagi execute permission
st = os.stat(tmp_path)
os.chmod(tmp_path, st.st_mode | stat.S_IXUSR)

# Run script bash asal dengan argumen yang sama
subprocess.call(["bash", tmp_path] + sys.argv[1:])

# Padam file sementara
os.remove(tmp_path)
PY
