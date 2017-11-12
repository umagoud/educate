<%@include file="header.jsp"%>
<article>
    <p> <h1> SAP Business Objects</h1>
 <p>
BI software allows you to put decision-ready information within business users’ reach. With our analytics platform, you can increase responsiveness, reduce IT costs and workload, and drive better decision making across your organization.
<br>Gain real-time business intelligence from any data
Increase user autonomy by exposing data in plain business terms
Make information consumption simple, personalized, and dynamic
Benefit from a flexible and scalable information infrastructure
 <br>
    <p>
<b>Deski Reports: </b>
<p>These are standard .rep files created from the full client (Desktop Intelligence) and these reports can be built using all the tools/options available in BO. 
<br>These deski reports can be viewed in the Infoview/Web Intelligence but cannot be modified. 
<br>
</p>
<p><b>Webi Reports:</b>
<p>These are .wid files created using the WEBI XI, and these reports can use limited tools/options available in BO(ref. comparison document on the BO website for complete difference on Webi and Deski reports).These reports can be built and viewed and modified/created using Infoview/Web Intelligence 
</p>
<p>
<b>Upgrading from BusinessObjects XI Release 2/3.1 and BI 4.0 to BI 4.1</b>
<br>
Project Evalution: How can we do this<br>
Upgrade Execution: SW upgradation<br>
Validation: Security, Correctness<br>
Rollout: Planned Down time, Training<br>
<br>
BI 4.1 is Better and Different<br>

Administration (Architecture design, Sizing, LCM Process)<br>
Operations ( Setup& Configuration, Tuning, Backup)<br>
BI Applications (Choice of Client tool, Data Federation)<br>
<br>
<b>Manageable Scope:</b><br>
Technical or Functional?<br>
Identifying Target<br>
Check you Upgrade Path<br>
Stay Focused<br>

Version Upgrade Path:<br>
<b>Migration:</b> Moving on to a different Platform (BO V5/V6 to XI r2 ) --> Complexity is Higher<br>
<b>Upgrade:</b> <br>Moving on a same Plat Form (XI r2/3 to BI 4) → Complexity is Lower<br>
 
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/upgradepaths.PNG">
<br> 
‘In Place’ Versus ‘In Parallel’ Upgrade
<br>
<b>Full System (One Shot) vs Staged (Incremental) Upgrade</b>
<br>
<p>
Platform Considerations 
<br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/platformconsiderations.PNG">
<br>Content Conversions:
<br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/contentconversion.PNG">
<img alt=""  width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/contentconversion2.PNG">
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/contentconversion3.PNG">
<p><b>From BOE XI Rel.2 SP2+ to SAP BI 4.1</b> <br>
<p>
(High level upgrade process using the Upgrade Management Tool-UMT)<br>

<br>
<b>From SAP BI 4.0 spx to SAP BI 4.1 spx</b> <br>
This is Just Update.<br>

SBOP BI 4.X spx Cluster Patching<br>

<P><b>Converting Desktop Intelligence Reports to Web Intelligence</b><br>
<p>
DESKI to WEBI Conversion:<br>
Reasons to convert:<br>
Reduced Deployment time and Cost of ownership<br>
End of life of Desktop Intelligence<br>
<br>
SAP BI 4.X will not include Desktop Intelligence<br>

Planning, Conversion process: Step by Step<br>
Get the list of documents<br>
Set full documents folder as source to Upgrade Management Tool (UMT)<br>
Run the conversion using Report Conversion Tool<br>
Review Conversion result and review the logs<br>
estimate the level of rework for each document <br>
( Set categories : no rework/some rework/a lot of rework/need to be recreated)<br>
handle the rework (3 versions: source, in progress, completed)<br>
involve business owners for validation<br>
finish document list for each department and deliver the packages to conversion/migration team.<br>

<b>Migration path( Two Work Flows):</b><br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/migrationpath.PNG"><br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/upgradingradingreports.PNG">

<br>
Upgrade Management Tool (UMT)<br>

Report Conversion Tool (RCT)<br>

Technical Implementation<br>

<b>Code Migration: A Case by Case assessment</b><br>
Assess the use of VBA in you Company<br>
Review of BI4 platform and reporting offer<br>
Assess current and future sdk possibilities<br>
<b>BI4.1 Web Intelligence SDK Limitations:</b><br>
No Webi SDK available for  .NET <br>
JAVA SDK evolving<br>

Free Hand SQL:<br>
</p>
<p><b>Sample Conversion (Using Upgrade Management Tool)</b><br>
<p>Promote XI 3.X content to BI 4.1<br>
<p> UMT-Scenario selection: <br>
<img alt="" width="50%" height="50%"src="http://www.educateworld.org/images/businessobjects/umtscenarioselection.PNG">
<p> UMT-Log on to Source and Destination<br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/logontosourceanddestination.PNG">
<br>
<p>UMT-Source Object Selection:<br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/sourceobjectselection.PNG">
<p>UMT- Object Options for Instances:<br>
<img alt="" width="50%" height="50%" src="http://www.educateworld.org/images/businessobjects/objectoptionsforinstances.PNG">
</p>

</article>
<%@include file="footer.jsp"%>