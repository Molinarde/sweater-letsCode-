<#import "parts/common.ftlh" as c>


<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group">
            <label>Password: </label>
            <input class="form-control" type="password" name="password" placeholder="Password"/>
        </div>
            <div class="form-group">
                <label>Email: </label>
                <input class="form-control" type="email" name="email" placeholder="some@some.com" value="${email!''}"/>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-dark" type="submit">Save</button>
    </form>
</@c.page>