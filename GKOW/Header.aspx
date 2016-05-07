<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Header.aspx.cs" Inherits="Header" %>

<!DOCTYPE html>
<html>
  <body>
   <div class="navigation-bar dark">
        <div class="navigation-bar-content container text-shadow">
        <a href="/" class="element "><span class="icon-grid-view  fg-blue"></span> GopalaKrishna <sup>1.0</sup></a>
        <span class="element-divider"></span>
        <ul class="element-menu">
            <li>
                <a class="dropdown-toggle" href ="#">My Personal</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">About Me</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIMyPersonal/AboutMe/MyInterests.aspx">My Interests</a></li>
                            <li><a href="../../../UIMyPersonal/AboutMe/MyProfession.aspx">My Profession</a></li>
                            <li><a href="">My Family</a></li>
                        </ul>
                    </li>
                  <li>
                        <a href="#" class="dropdown-toggle">Photos</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIMyPersonal/Photos/MyPhotos.aspx">My Photos</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
             <li>
                <a class="dropdown-toggle" href ="#">Interesting Stuff</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                    <li>
                        <a href="#" class="dropdown-toggle">Interesting Facts</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIInterestingStuff/InterstingFacts/InterestingScienceFacts.aspx">Interesting Science Facts</a></li>
                        </ul>
                    </li>
                     <li>
                        <a href="#" class="dropdown-toggle">Interesting Optical Illusions</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li><a href="../../../UIInterestingStuff/InterestingOpticalIllusions/InterestingOpticalIllusions.aspx">Can We Believe Our Eyes?</a></li>
                        </ul>
                    </li>
                </ul>
            </li>

             <li>
                <a href="#" class="dropdown-toggle">Math Fun</a>
            </li>
             <li>
                <a href="#" class="dropdown-toggle">Music</a>
            </li>


             
             <li>
                <a class="dropdown-toggle"  href="#">Technology</a>

                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                   
                     <li>
                        <a href="#" class="dropdown-toggle">Open Source</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                          <%--  <li>
                                  <a href="#" class="dropdown-toggle">Android</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Apple</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Communities</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>--%>
                        </ul>
                 </li>

                  <li>
                        <a href="#" class="dropdown-toggle">Microsoft</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                          <%--  <li>
                                  <a href="#" class="dropdown-toggle">DotNet</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Windows</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Communities</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>--%>
                        </ul>
                 </li>

                           <li>
                        <a href="#" class="dropdown-toggle">Technology Stacks</a>
                        <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="../../../UITechnology/TechnologyStacks/WebTechStackSearch.aspx">Search</a>
                            </li>
                          <%--  <li>
                                  <a href="#" class="dropdown-toggle">Android</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Apple</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>
                              <li>
                                  <a href="#" class="dropdown-toggle">Communities</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                            </li>--%>
                        </ul>
                 </li>

                      <li>
                        <a href="#" class="dropdown-toggle">Hacking</a>
                      <%--  <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                      <li>
                        <a href="#" class="dropdown-toggle">Databases</a>
                       <%-- <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                    <li>
                        <a href="#" class="dropdown-toggle">Tools</a>
                        <%--<ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>

                  <li>
                        <a href="#" class="dropdown-toggle">Blogs</a>
                       <%-- <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                            <li>
                                  <a href="#" class="dropdown-toggle">Linux</a>
                                         <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover">
                                            <li><a href="../../../UITechnology/OpenSource/Linux/LinuxBasics.aspx">LinuxBasics</a></li>
                                            <li></li>
                                         </ul>
                         </li>
                        </ul>--%>
                 </li>


               </ul>

             </li>
                 
           
            <li>
                <a class="dropdown-toggle"  href="#">Product Management</a>
            </li>
             <li>
                <a href="#" class="dropdown-toggle">Entrepreneurship</a>
            </li>
             <li>
                <a href="#" class="dropdown-toggle">GuestBook</a>
                <ul class="dropdown-menu dark" data-role="dropdown" data-show="hover"">
                      <li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>
                </ul>
            </li>
            <li>
              <a href ="../../../Search.aspx"><span class ="icon-search bg-dark fg-white" /></a>
            </li>
        </ul>
        
        </div>
    </div>
  </body>
</html>

