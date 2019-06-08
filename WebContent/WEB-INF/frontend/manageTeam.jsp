<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Football News, Live Scores, Results & Transfer | Minutes.com</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/PageLogo/logo.png" />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/stylesheet/admindashboard/manageteam.css"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <section class="body1">
      <!--Header-->
      <div id="navbar">
        <div class="logo">
          <a
            ><img
              src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png"
              width="inherit;"
          /></a>
        </div>
        <div><a href="./homepage.html">News</a></div>
        <div><a href="Live Scores">Live Scores</a></div>
        <div><a href="Leagues&Cups">Leagues & Cups</a></div>
        <div><a href="./test1.html">Teams</a></div>
        <div class="search-box">
          <input
            class="search-txt"
            type="text"
            name=""
            placeholder="Type to search"
          />
          <a class="search-btn" href="#">
            <i class="fas fa-search"></i>
          </a>
        </div>
        <div>
          <img src="${pageContext.request.contextPath}/images/English icon.png" width="25px;" />
          <a class="abc" href="english">English</a>
        </div>
      </div>
      <!--Main-->
      <div class="results">
        <div class=" premeir">
          <a class="resetFormat premeir1" href="todatmatches"
            >PREMEIR LEAGUES</a
          >
        </div>
        <div class="whitespace">
          <div class="preft">
            <a class="resetFormat ft" href="todaymatches">FT</a>
            <h3 class="score">Manchester United 3-5 Manchester City</h3>
          </div>
          <hr width="100%" text-align="center" />
          <div class="preft1">
            <a class="resetFormat ft1" href="todaymatches"><img class="degea" src="${pageContext.request.contextPath}/images/manchester/gk/degea.png"/></a>
            <h3 class="score1">De Gea</h3>
          </div>
          <hr width="100%" text-align="center" />
          </div>
        </div>
        <div class=" premeirbefore">
          <a class="resetFormat premeir1" href="todatmatches">La liga</a>
        </div>
        <div class="whitespace1">
          <div class="preft">
            <a class="resetFormat ft" href="todaymatches">FT</a>
            <h3 class="score">Barcelona 1-0 Real Madrid</h3>
          </div>
          <hr width="100%" text-align="center" />
          <div class="preft1">
            <a class="resetFormat ft1" href="todaymatches">FT</a>
            <h3 class="score1">Valencia 2-1 Celta Vigo</h3>
          </div>
          <hr width="100%" text-align="center" />
        </div>
        <div class=" premeirbefore">
          <a class="resetFormat premeir1" href="todatmatches">Serie A</a>
        </div>
        <div class="whitespace1">
          <div class="preft">
            <a class="resetFormat ft" href="todaymatches">FT</a>
            <h3 class="score">AC Milan 1-0 Lazio</h3>
          </div>
          <hr width="100%" text-align="center" />
          <div class="preft1">
            <a class="resetFormat ft1" href="todaymatches">30'</a>
            <h3 class="score1">Inter 1-1 Napoli (LIVE)</h3>
          </div>
          <hr width="100%" text-align="center" />
        </div>
      </div>
      <!--Footer-->
      <div id="footer" class="footers" role="contentinfo">
        <div class="inner">
          <div class="logofooter">
            <a href="./homepage.html" class="footerlogo" id="logofooters">
              <img
                src="${pageContext.request.contextPath}/images/PageLogo/MinutesIcon.png"
                class="footerimage"
              />
            </a>
          </div>
          <div id="footermenu" class="footermenu" role="navigation">
            <h2 class="titleblock"></h2>
            <ul class="menu">
              <li class="menuitem">
                <a href="./contact-us.html" class="contact">CONTACT US</a>
              </li>
              <li class="menuitem">
                <a href="./terms.html" class="term">TERMS OF SERVICE</a>
              </li>
              <li class="menuitem">
                <a href="./policy.html" class="privacy">PRIVACY POLICY</a>
              </li>
              <li class="menuitem">
                <a href="./careers.html" class="career">CAREERS</a>
              </li>
            </ul>
          </div>
        </div>
        <div id="social" class="socialmedia">
          <ul class="footersocial">
            <div>
              <a
                href="https://www.facebook.com/nguyenhuycuong.nguyenhuycuong.33"
                class="icon-fb"
              >
                <i class="fab fa-facebook-f" aria-hidden="true"></i
              ></a>
            </div>
            <div>
              <a href="https://www.instagram.com/binhanred/"
                ><i class="fab fa-instagram" aria-hidden="true"></i
              ></a>
            </div>
            <div>
              <a href="https://twitter.com/CuongHuyNg"
                ><i class="fab fa-twitter" aria-hidden="true"></i
              ></a>
            </div>
            <div>
              <a
                href="https://www.youtube.com/channel/UC0HdtBwDacmZQxQtM5qGw8Q/videos?view=57&flow=grid"
                ><i class="fab fa-youtube" aria-hidden="true"></i
              ></a>
            </div>
          </ul>
        </div>
        <div class="container">
          <form action="">
            <h1>Join Our Newsletter</h1>
            <div class="email-box">
              <i class="far fa-envelope"></i>
              <input
                class="tbox"
                type="email"
                name=""
                value=""
                placeholder="Enter your Email"
              />
              <button class="btn1" type="button" name="button">
                Subscribe
              </button>
            </div>
          </form>
        </div>
        <div>
          <a class="gotopbtn" href="#"
            ><span class="backtop">Back to top</span
            ><i class="fas fa-arrow-up"> </i>
          </a>
        </div>
      </div>
    </section>
  </body>
</html>
