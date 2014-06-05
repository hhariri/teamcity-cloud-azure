<%--
  ~ Copyright 2000-2012 JetBrains s.r.o.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<%@ page import="jetbrains.buildServer.clouds.azure.AzureCloudConstants" %>
<%@ taglib prefix="props" tagdir="/WEB-INF/tags/props" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="paramName" value="<%=AzureCloudConstants.FOO_PARAM_NAME%>"/>

<tr>
  <th><label for="${paramName}">Agent images:</label></th>
  <td>
    <props:multilineProperty name="${paramName}" className="longField" linkTitle="Agent images to run" cols="55" rows="5" expanded="${true}"/>
    <span class="smallNote">
      List of agent images, each on new line.
      <br/>
      Image format: <strong>&lt;Image name&gt;@&lt;server-local path to agent installation folder&gt;</strong>
      <br/>
      Additional settins are specified in the following format:
      <br/>
      <strong>@@&lt;Image name&gt;:&lt;parameter&gt;</strong>,
      <br/>
      where parameter could be:
      <br/>
      <strong>reuse</strong> to enable agent copies re-use or
      <br/>
      <strong>prop:&lt;agent property&gt;=&lt;value&gt;</strong> additional property for <em>buildAgent.configuration</em> file
    </span>
  </td>
</tr>
