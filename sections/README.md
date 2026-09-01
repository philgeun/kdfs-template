# 본문 섹션 사용법

`main.tex`은 논문 전체를 조립하는 루트 문서이며, 실제 본문은 번호가 붙은 파일로 분리되어 있다.

- `01-introduction.tex`: 서론
- `02-related-work.tex`: 관련 연구
- `03-methodology.tex`: 연구 방법과 표, 그림, 수식 예제
- `04-results.tex`: 연구 결과
- `05-discussion.tex`: 논의와 제한사항
- `06-conclusion.tex`: 결론

섹션 순서를 바꾸려면 `main.tex`의 `\input{sections/...}` 순서를 변경한다. 필요 없는 섹션은 해당 `\input` 줄을 제거하거나 주석 처리한다. 새 섹션은 동일한 번호 규칙으로 파일을 만든 뒤 `main.tex`에 `\input` 줄을 추가한다.

각 파일은 `\section`부터 시작하며 `\begin{document}`와 `\end{document}`를 포함하지 않는다. 참고문헌 데이터는 루트의 `references.bib`에서 관리한다.
