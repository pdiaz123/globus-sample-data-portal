%include('views/header.tpl')

<div class="container">

	<div class="page-header">
		<h1>Repository</h1>
	</div>

	<p>Select a dataset and click the button to download, or click on the dataset name to browse files in the dataset.</p>

	<div class="form-wrapper">
	  <form class="form-inline" role="form" action="{{get_url('download')}}" method="post">

	    <div class="row">
	      <div class="col-md-12">
	        <table class="table">
	          <th class="col-md-5 text-left">Dataset Name</th><th class="col-md-1 text-center">Select</th>
	          %if datasets:
	            %for dataset in datasets:
		          <tr>
		            <td class="col-md-5 text-left">
		              <i class="fa fa-folder fa-lg"></i>&nbsp;
		              <a href="{{ get_url('browse', target_uri=dataset['uri']) }}">{{ dataset['name'] }}</a>
		            </td>
		            <td class="col-md-1 text-center">
		              <input id="{{ dataset['uri'] }}" type="checkbox">
		            </td>
		          </tr>
		          %end
	          %else:
	          <p>No datasets found.</p>
	          %end
	        </table>
	      </div>
	    </div>

	    <div class="row">
        <div class="form-group col-md-5">
          <label class="col-md-4" for="year_filter">Select Year</label>
          <select class="col-md-3" name="year_filter" id="year_filter">
            <option value="2011">2011</option>
            <option value="2012">2012</option>
            <option value="2013">2013</option>
            <option value="2014">2014</option>
            <option value="2015">2015</option>
          </select>
        </div>
      </div>
	    <br />
	    <div class="form-actions">
	      <input class="btn btn-lg btn-primary" type="submit" value="Download with Globus" />&nbsp;&nbsp;&nbsp;
	    </div>
	  </form>
   </div> <!-- form -->

</div> <!-- container -->

%rebase('views/base', title='MRDP - Repository')