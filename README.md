## mac os wakeup connect airpods
- connect to airpods when mac wakeup
  - It search airpods on bluetooth menu by keyword "Pods"
- C&P from [kevinjalbert/bluetooth_headphones.scpt](https://gist.github.com/kevinjalbert/e39dca94b0e0eb63207479519fdfcd65)
- internally use sleepwatcher_2.2.1
  - https://www.bernhard-baehr.de
### How to use it
<details><summary>When you set your Mac to use English</summary>
<p>
  <ul>
  <li>Move to "System Preferences > Bluetooth" and check "Show 'bluetooth' on menu bar" to active</li>
  <li>Execute `install.sh en` on terminal</li>
    <ul>
    <li>Edit `BLUETOOTH_DEVICE_NAME` on `device.conf` if you need.</li>
    <li>Now your mac connect to your airpods automatically even after system reboot.</li>
    <li>During installing, or after it, mac os ask you permission. Click ok when you agree.</li>
    <li>If you want to restore origin, execute `uninstall.sh en`</li>
    </ul>
</p>
</details>

<details><summary>한국어 사용자</summary>
<p>
  <ul>
  <li>"시스템 환경설정 > Bluetooth"로 이동해서 "메뉴 막대에서 Bluetooth 보기" 체크 활성화</li>
  <li>`install.sh ko`를 터미널에서 실행</li>
    <ul>
    <li>필요한 경우, `device.conf` 파일 내의 `BLUETOOTH_DEVICE_NAME` 항목을 수정합니다.</li>
    <li>이제 Mac이 잠자기에서 깨어날 때마다 Bluetooth 메뉴바에서 "Pods"가 포함된 건을 찾아 연결을 시도합니다. (재부팅 이후에도)</li>
    <li>스크립트 설치 중 혹은 이후에 mac os가 권한을 물어볼 수도 있습니다. 경건한 마음으로 `확인`을 누르도록 하세요.</li>
    <li>해당 기능을 취소하고 싶다면 `uninstall.sh ko`를 실행하세요.</li>
    </ul>
</p>
</details>
