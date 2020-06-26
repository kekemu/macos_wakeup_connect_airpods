## mac os wakeup connect airpods
- connect to airpods when mac wakeup
  - It search airpods on bluetooth menu by keyword "Pods"
### How to use it
<details><summary>When you set your Mac to use English</summary>
<p>
  <ul>
  <li>Move to "System Preferences > Bluetooth" and check "Show 'bluetooth' on menu bar" to active</li>
  <li>Execute `registerWakeup_en.sh` on terminal</li>
    <ul>
    <li>Now your mac connect to your airpods automatically until system reboot</li>
    <li> If you want to make it revive against reboot, add `registerWakeup_en.sh` to Users & Groups Login Items.
      <p>see https://support.apple.com/guide/mac-help/change-users-groups-login-items-preferences-mtusr003/mac</p>
    </li>
    </ul>
</p>
</details>

<details><summary>한국어 사용자</summary>
<p>
  <ul>
  <li>"시스템 환경설정 > Bluetooth"로 이동해서 "메뉴 막대에서 Bluetooth 보기" 체크 활성화</li>
  <li>`registerWakeup_ko.sh`를 터미널에서 실행</li>
    <ul>
    <li>이제 Mac이 잠자기에서 깨어날 때마다 Bluetooth 메뉴바에서 "Pods"가 포함된 건을 찾아 연결을 시도합니다. 재부팅 되기 전 까지는...</li>
    <li>재부팅 이후에도 해당 기능을 활성화 시키기 원하신다면 `registerWakeup_ko.sh`를 "시스템 환경설정 > 사용자 및 그룹 > 로그인 항목"에 추가해주세요.
      <p>다음 페이지를 참고하시면 됩니다. https://support.apple.com/ko-kr/guide/mac-help/mtusr003/mac</p>
    </li>
    </ul>
</p>
</details>
