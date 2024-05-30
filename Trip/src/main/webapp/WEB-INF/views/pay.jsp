<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
 <head>
    <title>결제하기</title>
    <sec:authentication property="principal" var="pinfo"/>
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.12.4.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"
    ></script>
    <script
      type="text/javascript"
      src="https://unpkg.com/axios/dist/axios.min.js"
    ></script>

    <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"
    ></script>
    <script>
      function mypayment() {
        const myAmount = Number(document.getElementById("amount").value);

        const IMP = window.IMP; // 생략 가능
        IMP.init("imp24034620"); // Example: imp00000000
        IMP.request_pay(
          {
            // param
            pg: "kakaopay",
            pay_method: "card",
            name: "마우스",
            amount: myAmount,
            buyer_email: "${pinfo.username}",
            buyer_name: "임재현",
            buyer_tel: "010-4242-4242",
            buyer_addr: "서울특별시 강남구 신사동",
            buyer_postcode: "01181",
            m_redirect_url: "", // 모바일 결제후 리다이렉트될 주소!!
          },
          async (rsp) => {
            // callback
            if (rsp.success) {
              // 결제 성공시
              await axios.post(
                "http://localhost:3000/graphql",
                {
                  query: `
                      mutation {
                        buyTicket(impUid: "${rsp.imp_uid}", amount: ${rsp.paid_amount},pay_method:"${rsp.pay_method}") {
                          id
                          count
                          money
                          method
                        }
                      }
                    `,
                },
                {
                  headers: {
                    authorization:
                      "Bearer 액세스토큰",
                  },
                }
              );
            } else {
              // 결제 실패시
            }
          }
        );
      }
    </script>
  </head>
  <body>
    결제할 금액: <input type="text" id="amount" />
    <button onclick="mypayment()">결제하기</button>
  </body>
</html>