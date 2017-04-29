<div class="row" style="margin-top: 5px;">
  <div class="col-xs-1">
    <a href="<%= request.getParameter("back") %>">
      <span style="font-size: 16px;"
        class="glyphicon glyphicon-chevron-left">
      </span>
    </a>
  </div>
  <div class="col-xs-8">
    <a href="#">
      <span style="font-size: 30px; color: white;">
        <%= request.getParameter("title") %>
      </span>
    </a>
  </div>
  <div class="col-xs-2">
    <a href="../Logout">
      <span style="font-size: 16px;"
        class="glyphicon glyphicon-log-out">
      </span>
    </a>
  </div>
</div>