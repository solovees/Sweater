<#import "parts/common.ftl" as c>


<@c.page>
<div class="user-name">
    <h5>${username}</h5>
</div>
${message?ifExists}
<div class="container">
    <form  method="post">
        <div class="form-item">
            <label>Password:</label>
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
        <div class="form-item">
            <label>E-mail:</label>
            <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
        </div>
        <button class="btn btn-primary" type="submit">Save</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>
</div>
</@c.page>