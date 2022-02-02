<%--
  Created by IntelliJ IDEA.
  User: GnaixEuy
  Date: 2021/6/24
  Time: 11:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="description" content="">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">

    <!-- FontAwesome JS-->
    <script defer src="${pageContext.request.contextPath}/view/assets/plugins/fontawesome/js/all.min.js"></script>

    <!-- App CSS -->
    <link id="theme-style" rel="stylesheet" href="${pageContext.request.contextPath}/view/assets/css/portal.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body class="app">
<%--<div class="app-wrapper">--%>

<div class="app-content pt-3 p-md-3 p-lg-4">
    <%--<div class="container-xl">--%>

    <h1 class="app-page-title">开发简介</h1>

    <div class="app-card alert alert-dismissible shadow-sm mb-4 border-left-decoration" role="alert">
        <div class="inner">
            <div class="app-card-body p-3 p-lg-4">
                <h3 class="mb-3">Welcome, developer!</h3>
                <div class="row gx-5 gy-3">
                    <div class="col-12 col-lg-9">
                        <div>访问我们的项目地址来获取最新版本吧（虽然应该不会继续维护但还是希望你能点一颗小星星✌️）</div>
                    </div><!--//col-->
                    <div class="col-12 col-lg-3">
                        <a class="btn app-btn-primary" href="https://github.com/GnaixEuy/J2EE_Practical-Training">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-file-earmark-arrow-down mr-2"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4 0h5.5v1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h1V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2z"/>
                                <path d="M9.5 3V0L14 4.5h-3A1.5 1.5 0 0 1 9.5 3z"/>
                                <path fill-rule="evenodd"
                                      d="M8 6a.5.5 0 0 1 .5.5v3.793l1.146-1.147a.5.5 0 0 1 .708.708l-2 2a.5.5 0 0 1-.708 0l-2-2a.5.5 0 1 1 .708-.708L7.5 10.293V6.5A.5.5 0 0 1 8 6z"/>
                            </svg>
                            Click Here</a>
                    </div><!--//col-->
                </div><!--//row-->
                <button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
            </div><!--//app-card-body-->

        </div><!--//inner-->
    </div><!--//app-card-->

    <div class="row g-4 mb-4">
        <div class="col-6 col-lg-3">
            <div class="app-card app-card-stat shadow-sm h-100">
                <div class="app-card-body p-3 p-lg-4">
                    <h4 class="stats-type mb-1">add Code</h4>
                    <div class="stats-figure">$12,628</div>
                    <div class="stats-meta text-success">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-up" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                        </svg>
                        20%
                    </div>
                </div><!--//app-card-body-->
                <a class="app-card-link-mask" href="#"></a>
            </div><!--//app-card-->
        </div><!--//col-->

        <div class="col-6 col-lg-3">
            <div class="app-card app-card-stat shadow-sm h-100">
                <div class="app-card-body p-3 p-lg-4">
                    <h4 class="stats-type mb-1">Expenses</h4>
                    <div class="stats-figure">$2,250</div>
                    <div class="stats-meta text-success">
                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-down" fill="currentColor"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
                        </svg>
                        5%
                    </div>
                </div><!--//app-card-body-->
                <a class="app-card-link-mask" href="#"></a>
            </div><!--//app-card-->
        </div><!--//col-->
        <div class="col-6 col-lg-3">
            <div class="app-card app-card-stat shadow-sm h-100">
                <div class="app-card-body p-3 p-lg-4">
                    <h4 class="stats-type mb-1">Projects</h4>
                    <div class="stats-figure">23</div>
                    <div class="stats-meta">
                        Open
                    </div>
                </div><!--//app-card-body-->
                <a class="app-card-link-mask" href="#"></a>
            </div><!--//app-card-->
        </div><!--//col-->
        <div class="col-6 col-lg-3">
            <div class="app-card app-card-stat shadow-sm h-100">
                <div class="app-card-body p-3 p-lg-4">
                    <h4 class="stats-type mb-1">Invoices</h4>
                    <div class="stats-figure">6</div>
                    <div class="stats-meta">New</div>
                </div><!--//app-card-body-->
                <a class="app-card-link-mask" href="#"></a>
            </div><!--//app-card-->
        </div><!--//col-->
    </div><!--//row-->

    <div class="row g-4 mb-4">
        <div class="col-12 col-lg-6">
            <div class="app-card app-card-stats-table h-100 shadow-sm">
                <div class="app-card-header p-3">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-auto">
                            <h4 class="app-card-title">develop team</h4>
                        </div><!--//col-->
                        <div class="col-auto">
                            <div class="card-header-action">
                                <a href="https://github.com/GnaixEuy/J2EE_Practical-Training">get more</a>
                            </div><!--//card-header-actions-->
                        </div><!--//col-->
                    </div><!--//row-->
                </div><!--//app-card-header-->
                <div class="app-card-body p-3 p-lg-4">
                    <div class="table-responsive">
                        <table class="table table-borderless mb-0">
                            <thead>
                            <tr>
                                <th class="meta">Vist them</th>
                                <th class="meta stat-cell">author</th>
                                <th class="meta stat-cell">Hot</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><a href="http://blog.GnaixEuy.cn">blog.GnaixEuy.cn</a></td>
                                <td class="stat-cell">GnaixEuy</td>
                                <td class="stat-cell">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrow-up text-success" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                                    </svg>
                                    60%
                                </td>
                            </tr>
                            <tr>
                                <td><a href="https://github.com/Utah-syp">github.com/Utah-syp</a></td>
                                <td class="stat-cell">Utah-syp</td>
                                <td class="stat-cell">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrow-up text-success" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                                    </svg>
                                    35%
                                </td>
                            </tr>
                            <tr>
                                <td><a href="https://github.com/SparkShine121">github.com/SparkShine121</a></td>
                                <td class="stat-cell">SparkShine121</td>
                                <td class="stat-cell">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrow-up text-success" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                                    </svg>
                                    40%
                                </td>
                            </tr>
                            <tr>
                                <td><a href="https://github.com/201941054100">github.com/ 201941054100</a></td>
                                <td class="stat-cell">WangPenwei</td>
                                <td class="stat-cell">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrow-up text-success" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                                    </svg>
                                    30%
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div><!--//table-responsive-->
                </div><!--//app-card-body-->
            </div><!--//app-card-->
        </div><!--//col-->
        <div class="col-12 col-lg-6">
            <div class="app-card app-card-stats-table h-100 shadow-sm">
                <div class="app-card-header p-3">
                    <div class="row justify-content-between align-items-center">
                        <div id="dependencies">
                            <div data-view-component="true" class="Subhead hx_Subhead--responsive">
                                <h2 data-view-component="true" class="Subhead-heading">Dependency graph</h2>
                            </div>
                            <div class="tabnav">
                                <nav class="tabnav-tabs" aria-label="Dependency graph menu">
                                    <a class="js-selected-navigation-item selected tabnav-tab" aria-current="page"
                                       data-selected-links=" /GnaixEuy/J2EE_Practical-Training/network/dependencies"
                                       href="https://github.com/GnaixEuy/J2EE_Practical-Training/network/dependencies">Dependencies</a>
                                    <a class="js-selected-navigation-item tabnav-tab"
                                       data-selected-links=" /GnaixEuy/J2EE_Practical-Training/network/dependents"
                                       href="https://github.com/GnaixEuy/J2EE_Practical-Training/network/dependents">Dependents</a>
                                    <a class="js-selected-navigation-item tabnav-tab"
                                       data-selected-links="dependabot_updates /GnaixEuy/J2EE_Practical-Training/network/updates"
                                       href="https://github.com/GnaixEuy/J2EE_Practical-Training/network/updates">
                                        Dependabot
                                    </a></nav>
                            </div>


                            <p class="mb-3">These dependencies are defined in <strong>J2EE_Practical-Training</strong>’s
                                manifest files, such as
                                <a class="text-bold" title="pom.xml"
                                   href="http://github.com/GnaixEuy/J2EE_Practical-Training/network/dependencies#pom.xml">pom.xml</a>.
                            </p>


                            <div class="Box mb-3" id="">
                                <div class="Box-header clearfix border-bottom-0">
                                    <div class="table-list-filters">
                                        <div class="table-list-header-toggle states float-left pl-0 color-text-primary">
                                            <svg class="octicon octicon-package mr-2 color-text-tertiary"
                                                 viewBox="0 0 16 16"
                                                 version="1.1"
                                                 width="16" height="16" aria-hidden="true">
                                                <path fill-rule="evenodd"
                                                      d="M8.878.392a1.75 1.75 0 00-1.756 0l-5.25 3.045A1.75 1.75 0 001 4.951v6.098c0 .624.332 1.2.872 1.514l5.25 3.045a1.75 1.75 0 001.756 0l5.25-3.045c.54-.313.872-.89.872-1.514V4.951c0-.624-.332-1.2-.872-1.514L8.878.392zM7.875 1.69a.25.25 0 01.25 0l4.63 2.685L8 7.133 3.245 4.375l4.63-2.685zM2.5 5.677v5.372c0 .09.047.171.125.216l4.625 2.683V8.432L2.5 5.677zm6.25 8.271l4.625-2.683a.25.25 0 00.125-.216V5.677L8.75 8.432v5.516z"></path>
                                            </svg>
                                            Dependencies defined in
                                            <a class="Link--primary text-bold" data-octo-click="dep_graph_manifest"
                                               title="pom.xml"
                                               href="https://github.com/GnaixEuy/J2EE_Practical-Training/blob/master/pom.xml">pom.xml</a>
                                            <span title="10" data-view-component="true" class="Counter v-align-middle">10</span>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="user" data-hovercard-url="/users/javagems/hovercard"
                                           data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self"
                                           href="https://github.com/javagems">
                                            <img width="20" height="20" class="avatar avatar-user mr-2" alt="@javagems"
                                                 src="https://avatars.githubusercontent.com/u/152035?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/javagems/commons-fileupload/hovercard"
             href="https://github.com/javagems/commons-fileupload">
            javagems / <span class="text-bold">commons-fileupload</span>
</a>
            <small>commons-fileupload:commons-fileupload</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>1.4</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization"
                                           data-hovercard-url="/orgs/apache/hovercard"
                                           href="https://github.com/apache">
                                            <img width="20" height="20" class="avatar mr-2" alt="@apache"
                                                 src="https://avatars.githubusercontent.com/u/47359?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/apache/commons-io/hovercard" href="https://github.com/apache/commons-io">
            apache / <span class="text-bold">commons-io</span>
</a>
            <small>commons-io:commons-io</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>2.6</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization"
                                           data-hovercard-url="/orgs/javaee/hovercard"
                                           href="https://github.com/javaee">
                                            <img width="20" height="20" class="avatar mr-2" alt="@javaee"
                                                 src="https://avatars.githubusercontent.com/u/23086798?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/javaee/servlet-spec/hovercard" href="https://github.com/javaee/servlet-spec">
            javaee / <span class="text-bold">servlet-spec</span>
</a>
            <small>javax.servlet:javax.servlet-api</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>4.0.1</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="user" data-hovercard-url="/users/dohajmal/hovercard"
                                           data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self"
                                           href="https://github.com/dohajmal">
                                            <img width="20" height="20" class="avatar avatar-user mr-2" alt="@dohajmal"
                                                 src="https://avatars.githubusercontent.com/u/18718882?s=40&amp;u=bb82c77ce8a80612f3e7f3a6b125da658d6b2476&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/dohajmal/Cabinet_medecin/hovercard"
             href="https://github.com/dohajmal/Cabinet_medecin">
            dohajmal / <span class="text-bold">Cabinet_medecin</span>
</a>
            <small>jstl:jstl</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>1.1.2</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization" data-hovercard-url="/orgs/mysql/hovercard"
                                           href="https://github.com/mysql">
                                            <img width="20" height="20" class="avatar mr-2" alt="@mysql"
                                                 src="https://avatars.githubusercontent.com/u/2452804?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/mysql/mysql-connector-j/hovercard" href="https://github.com/mysql/mysql-connector-j">
            mysql / <span class="text-bold">mysql-connector-j</span>
</a>
            <small>mysql:mysql-connector-java</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>8.0.23</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization"
                                           data-hovercard-url="/orgs/apache/hovercard"
                                           href="https://github.com/apache">
                                            <img width="20" height="20" class="avatar mr-2" alt="@apache"
                                                 src="https://avatars.githubusercontent.com/u/47359?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/apache/maven-plugins/hovercard" href="https://github.com/apache/maven-plugins">
            apache / <span class="text-bold">maven-plugins</span>
</a>
            <small>org.apache.maven.plugins:maven-war-plugin</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>3.3.1</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="user" data-hovercard-url="/users/stleary/hovercard"
                                           data-octo-click="hovercard-link-click" data-octo-dimensions="link_type:self"
                                           href="https://github.com/stleary">
                                            <img width="20" height="20" class="avatar avatar-user mr-2" alt="@stleary"
                                                 src="https://avatars.githubusercontent.com/u/5107558?s=40&amp;u=fbfe657488541faf7a084c543be5a907e50f1afe&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/stleary/JSON-java/hovercard" href="https://github.com/stleary/JSON-java">
            stleary / <span class="text-bold">JSON-java</span>
</a>
            <small>org.json:json</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>20210307</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization"
                                           data-hovercard-url="/orgs/junit-team/hovercard"
                                           href="https://github.com/junit-team">
                                            <img width="20" height="20" class="avatar mr-2" alt="@junit-team"
                                                 src="https://avatars.githubusercontent.com/u/874086?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/junit-team/junit5/hovercard" href="https://github.com/junit-team/junit5">
            junit-team / <span class="text-bold">junit5</span>
</a>
            <small>org.junit.jupiter:junit-jupiter-api</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>5.7.1</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <a data-hovercard-type="organization"
                                           data-hovercard-url="/orgs/junit-team/hovercard"
                                           href="https://github.com/junit-team">
                                            <img width="20" height="20" class="avatar mr-2" alt="@junit-team"
                                                 src="https://avatars.githubusercontent.com/u/874086?s=40&amp;v=4">
                                        </a>
                                        <span class="f5 color-text-tertiary">
          <a data-octo-click="dep_graph_package" data-hovercard-type="repository"
             data-hovercard-url="/junit-team/junit5/hovercard" href="https://github.com/junit-team/junit5">
            junit-team / <span class="text-bold">junit5</span>
</a>
            <small>org.junit.jupiter:junit-jupiter-engine</small>
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>5.7.1</code>
                                        </div>
                                    </div>
                                </div>


                                <div class="border-top Details js-details-container"
                                     data-repository-hovercards-enabled="">
                                    <div class="Box-row d-flex flex-items-center js-dependency">
                                        <span class="pl-4" aria-hidden="true"></span>

                                        <img class="avatar mr-2 avatar-user"
                                             src="https://avatars.githubusercontent.com/u/10137?s=40&amp;v=4"
                                             width="20" height="20" alt="@ghost">

                                        <span class="f5 color-text-tertiary">
          taglibs:standard
      </span>

                                        <div class="d-flex flex-auto flex-justify-end flex-items-center">
                                            <code>1.1.2</code>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--//row-->
    <%--        </div><!--//container-fluid-->--%>
    <%--    </div><!--//app-content-->--%>

</div><!--//app-wrapper-->


<!-- Javascript -->
<script src="${pageContext.request.contextPath}/view/assets/plugins/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- Charts JS -->
<script src="${pageContext.request.contextPath}/view/assets/plugins/chart.js/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/view/assets/js/index-charts.js"></script>

<!-- Page Specific JS -->
<script src="assets/js/app.js"></script>

</body>
</html>

<script type="text/javascript">
    /* 鼠标特效 */
    var a_idx = 0;
    $("body").click(function (e) {
        var a = ["欢迎光临", "GnaixEuy", "Utah", "元芳，你怎么看？", "针不戳 ", "什么是快乐星球 ", "祖安人", "达咩", "小丑竟是我自己"];
        var $i = $("<span />").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,
            y = e.pageY;
        $i.css({
            "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
            "top": y - 20,
            "left": x,
            "z_index": 100,
            "position": "absolute",
            "font-weight": "bold",
            "color": "#38b848"
        });
        $("body").append($i);
        $i.animate({
                "top": y - 180,
                "opacity": 0
            },
            1500,
            function () {
                $i.remove();
            });
    });
</script>