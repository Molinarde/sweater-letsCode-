<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label>User Name : </label>
            <input class="form-control" type="text" name="username" placeholder="User name"/>
        </div>
        <div class="form-group">
            <label>Password: </label>
            <input class="form-control" type="password" name="password" placeholder="Password"/>
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label>Email: </label>
                <input class="form-control" type="email" name="email" placeholder="some@some.com"/>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <button class="btn btn-dark" type="submit">
            <#if isRegisterForm>
                Create
            <#else>
                Sing In
            </#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn btn-light" type="submit">Sign Out</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>
</#macro>