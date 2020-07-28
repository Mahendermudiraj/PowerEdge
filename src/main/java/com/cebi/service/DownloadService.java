package com.cebi.service;

import java.util.List;

import com.cebi.entity.ReportDownload;
import com.cebi.entity.ReportHistory;



public interface DownloadService {
	
	public List<ReportDownload>getReportStatus(ReportDownload reportDownload);
	public String getReportDelete(ReportDownload reportDownload);
	public List<ReportHistory> getReportHistory(ReportDownload reportDownload);

}
