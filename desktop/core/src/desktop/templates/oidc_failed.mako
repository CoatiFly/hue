## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

<%!
from django.utils.translation import ugettext as _
from desktop.views import commonheader, commonfooter
%>

%if not is_embeddable:
${ commonheader(_('OpenID Connect Login Failed:'), "", user, request) | n,unicode }
%endif

<link rel="stylesheet" href="${ static('desktop/css/httperrors.css') }">

<div id="httperror" class="container-fluid">
  <div class="row-fluid">
    <div class="span12 center">
      <div class="error-code">401</div>
    </div>
  </div>
  <div class="row-fluid">
    <div class="span6 offset3 center error-box">
      <h1>${_('Unauthorized')}</h1>

      <p>${_("Sorry, your user is not found, and settings doesn't allow to create a new user.")}</p>
      <br/>
      <a href="/oidc/authenticate/">${_('Login again with another user')}</a>
    </div>
  </div>
</div>

%if not is_embeddable:
${ commonfooter(request, messages) | n,unicode }
%endif