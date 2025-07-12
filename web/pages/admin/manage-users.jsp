<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User Management - AutoRental</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

                <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/admin/user-management.css">

                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
                    rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
            </head>

            <body>
                <div class="admin-layout">
                    <!-- Sidebar -->
                    <div class="sidebar" id="sidebar">
                        <div class="sidebar-header"
                            style="display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center;">
                            <a href="${pageContext.request.contextPath}/pages/admin/admin-dashboard.jsp"
                                class="sidebar-logo"
                                style="flex-direction: column; align-items: center; gap: 0; text-decoration: none; width: 100%;">
                                <div style="display: flex; align-items: center; gap: 3px; justify-content: center;">
                                    <span class="sidebar-logo-brand" style="color: #fff;">AUTO</span>
                                    <span class="sidebar-logo-brand" style="color: #01D28E;">RENTAL</span>
                                </div>
                                <small style="color: #9ca3af; font-size: 12px; margin-left: 0; margin-top: 1px;">Admin
                                    Dashboard</small>
                            </a>
                        </div>

                        <nav class="sidebar-nav">
                            <a href="${pageContext.request.contextPath}/pages/admin/admin-dashboard.jsp"
                                class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M3 13h8V3H3v10zm0 8h8v-6H3v6zm10 0h8V11h-8v10zm0-18v6h8V3h-8z" />
                                </svg>
                                Dashboard
                            </a>
                            <a href="${pageContext.request.contextPath}/admin/user-management" class="nav-item active">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M16 7c0-2.21-1.79-4-4-4S8 4.79 8 7s1.79 4 4 4 4-1.79 4-4zm-4 6c-2.67 0-8 1.34-8 4v3h16v-3c0-2.66-5.33-4-8-4z" />
                                </svg>
                                Users
                            </a>
                            <a href="${pageContext.request.contextPath}/pages/admin/manage-cars.jsp" class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M18.92 6.01C18.72 5.42 18.16 5 17.5 5h-11c-.66 0-1.22.42-1.42 1.01L3 12v8c0 .55.45 1 1 1h1c.55 0 1-.45 1-1v-1h12v1c0 .55.45 1 1 1h1c.55 0 1-.45 1-1v-8l-2.08-5.99z" />
                                </svg>
                                Cars
                            </a>
                            <a href="${pageContext.request.contextPath}/admin/staff-management" class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" />
                                </svg>
                                Staff
                            </a>
                            <a href="${pageContext.request.contextPath}/pages/admin/manage-reports.jsp"
                                class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M3 17h3v-7H3v7zm5 0h3v-12H8v12zm5 0h3v-4h-3v4zm5 0h3v-9h-3v9z" />
                                </svg>
                                Reports
                            </a>
                            <a href="${pageContext.request.contextPath}/pages/admin/contract-details.jsp"
                                class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M16.5 3a2.5 2.5 0 0 1 3.54 3.54l-12.5 12.5-4.24 1.06 1.06-4.24L16.5 3zm2.04 2.12a.5.5 0 0 0-.71 0l-1.34 1.34 1.71 1.71 1.34-1.34a.5.5 0 0 0 0-.71l-1-1zm-2.75 2.75L5 16.66V19h2.34l10.79-10.79-1.34-1.34z" />
                                </svg>
                                Contract Details
                            </a>
                            <a href="${pageContext.request.contextPath}/pages/admin/manage-vouchers.jsp"
                                class="nav-item">
                                <svg class="nav-item-icon" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M21.41 11.58l-9-9C12.05 2.22 11.55 2 11 2H4c-1.1 0-2 .9-2 2v7c0 .55.22 1.05.59 1.42l9 9c.36.36.86.58 1.41.58.55 0 1.05-.22 1.41-.59l7-7c.37-.36.59-.86.59-1.41 0-.55-.23-1.06-.59-1.42zM5.5 7C4.67 7 4 6.33 4 5.5S4.67 4 5.5 4 7 4.67 7 5.5 6.33 7 5.5 7z" />
                                </svg>
                                Vouchers
                            </a>
                        </nav>

                        <div class="sidebar-user">
                            <a class="logout-btn" href="${pageContext.request.contextPath}/logout">
                                <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                                    <path
                                        d="M17 7l-1.41 1.41L18.17 11H8v2h10.17l-2.58 2.59L17 17l5-5zM4 5h8V3H4c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h8v-2H4V5z" />
                                </svg>
                                Logout
                            </a>
                        </div>
                    </div>

                    <!-- Main Content -->
                    <div class="main-content">
                        <!-- Top Header -->
                        <header class="top-header">
                            <div class="header-content">
                                <div class="header-left">
                                    <button class="btn-ghost" onclick="toggleSidebar()">
                                        <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                                            <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z" />
                                        </svg>
                                    </button>
                                    <div class="search-box">
                                        <svg class="search-icon" fill="currentColor" viewBox="0 0 24 24">
                                            <path
                                                d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" />
                                        </svg>
                                        <input type="text" class="search-input" placeholder="Search...">
                                    </div>
                                </div>
                                <div class="header-right">
                                    <button class="notification-btn">
                                        <svg width="20" height="20" fill="currentColor" viewBox="0 0 24 24">
                                            <path
                                                d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.89 2 2 2zm6-6v-5c0-3.07-1.64-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.63 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2z" />
                                        </svg>
                                        <span class="notification-badge">3</span>
                                    </button>
                                    <div class="user-profile">
                                        <div class="user-avatar">QH</div>
                                        <div class="user-details">
                                            <h4>Quang Huy</h4>
                                            <p>Administrator</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </header>

                        <!-- Page Content -->
                        <main class="page-content">
                            <div class="page-header">
                                <div class="flex items-center justify-between">
                                    <div>
                                        <h1 class="page-title">Account Management</h1>
                                        <p class="page-description">Manage all user accounts, staff members, and
                                            administrators</p>
                                    </div>
                                    <button class="btn btn-primary" onclick="openAddUserModal()">
                                        <svg width="16" height="16" fill="currentColor" viewBox="0 0 24 24">
                                            <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z" />
                                        </svg>
                                        Add Account
                                    </button>
                                </div>
                            </div>

                            <!-- Stats Cards -->
                            <div class="stats-grid">
                                <div class="stat-card">
                                    <div class="stat-header">
                                        <span class="stat-title">Total Users</span>
                                    </div>
                                    <div class="stat-value">${not empty users ? users.size() : 0}</div>
                                    <div class="stat-change positive">All registered users</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-header">
                                        <span class="stat-title">Customers</span>
                                    </div>
                                    <div class="stat-value">
                                        <c:set var="userCount" value="0" />
                                        <c:forEach var="user" items="${users}">
                                            <c:if test="${requestScope['role_' += user.userId] == 'User'}">
                                                <c:set var="userCount" value="${userCount + 1}" />
                                            </c:if>
                                        </c:forEach>
                                        ${userCount}
                                    </div>
                                    <div class="stat-change positive">Regular customers</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-header">
                                        <span class="stat-title">Staff Members</span>
                                    </div>
                                    <div class="stat-value">
                                        <c:set var="staffCount" value="0" />
                                        <c:forEach var="user" items="${users}">
                                            <c:if test="${requestScope['role_' += user.userId] == 'Staff'}">
                                                <c:set var="staffCount" value="${staffCount + 1}" />
                                            </c:if>
                                        </c:forEach>
                                        ${staffCount}
                                    </div>
                                    <div class="stat-change">System staff</div>
                                </div>
                                <div class="stat-card">
                                    <div class="stat-header">
                                        <span class="stat-title">Active Users</span>
                                    </div>
                                    <div class="stat-value">
                                        <c:set var="activeCount" value="0" />
                                        <c:forEach var="user" items="${users}">
                                            <c:if test="${user.status == 'Active'}">
                                                <c:set var="activeCount" value="${activeCount + 1}" />
                                            </c:if>
                                        </c:forEach>
                                        ${activeCount}
                                    </div>
                                    <div class="stat-change positive">Currently active</div>
                                </div>
                            </div>

                            <!-- Filter Bar -->
                            <div class="filter-bar">
                                <div class="search-box">
                                    <svg class="search-icon" fill="currentColor" viewBox="0 0 24 24">
                                        <path
                                            d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" />
                                    </svg>
                                    <input type="text" class="search-input" placeholder="Search users..."
                                        id="searchUsers" value="${param.search}">
                                </div>
                                <select class="form-select" id="roleFilter">
                                    <option value="all" ${param.role==null || param.role=='all' ? 'selected' : '' }>All
                                        Roles</option>
                                    <option value="User" ${param.role=='User' ? 'selected' : '' }>User</option>
                                    <option value="Staff" ${param.role=='Staff' ? 'selected' : '' }>Staff</option>
                                    <option value="Admin" ${param.role=='Admin' ? 'selected' : '' }>Admin</option>
                                </select>
                                <select class="form-select" id="statusFilter">
                                    <option value="all" ${param.status==null || param.status=='all' ? 'selected' : '' }>
                                        All Status</option>
                                    <option value="Active" ${param.status=='Active' ? 'selected' : '' }>Active</option>
                                    <option value="Inactive" ${param.status=='Inactive' ? 'selected' : '' }>Inactive
                                    </option>
                                    <option value="Banned" ${param.status=='Banned' ? 'selected' : '' }>Banned</option>
                                    <option value="Deleted" ${param.status=='Deleted' ? 'selected' : '' }>Deleted
                                    </option>
                                </select>
                            </div>

                            <!-- Users Table -->
                            <div class="card">
                                <div class="card-header">
                                    <h2 class="card-title">All Accounts</h2>
                                    <p class="card-description">Manage and monitor all user accounts, staff members, and
                                        administrators</p>
                                </div>
                                <div class="card-content">
                                    <div class="table-container">
                                        <table class="data-table" id="usersTable">
                                            <thead>
                                                <tr>
                                                    <th>User</th>
                                                    <th>Contact</th>
                                                    <th>Join Date</th>
                                                    <th>Role</th>
                                                    <th>Bookings</th>
                                                    <th>Total Spent</th>
                                                    <th>Status</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:choose>
                                                    <c:when test="${not empty users}">
                                                        <c:forEach var="user" items="${users}">
                                                            <tr>
                                                                <td>
                                                                    <div>
                                                                        <div class="font-medium">${user.fullName}</div>
                                                                        <div class="text-sm text-gray-500">${user.email}
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <div>${user.phoneNumber != null ?
                                                                            user.phoneNumber : 'N/A'}</div>
                                                                        <div class="text-xs text-gray-500">
                                                                            ${user.username}</div>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    ${user.createdDate != null ?
                                                                    user.createdDate.toString().substring(0, 10) : ''}
                                                                </td>
                                                                <td>
                                                                    <span class="text-sm">${requestScope['role_' +=
                                                                        user.userId] != null ? requestScope['role_' +=
                                                                        user.userId] : 'Unknown'}</span>
                                                                </td>
                                                                <td class="font-medium">${requestScope['bookingCount_'
                                                                    += user.userId] != null ?
                                                                    requestScope['bookingCount_' += user.userId] : 0}
                                                                </td>
                                                                <td class="font-medium">
                                                                    <fmt:formatNumber
                                                                        value="${requestScope['totalSpent_' += user.userId] != null ? requestScope['totalSpent_' += user.userId] : 0}"
                                                                        type="currency" currencySymbol="$" />
                                                                </td>
                                                                <td>
                                                                    <c:choose>
                                                                        <c:when test="${user.status == 'Active'}">
                                                                            <span class="badge success">Active</span>
                                                                        </c:when>
                                                                        <c:when test="${user.status == 'Banned'}">
                                                                            <span class="badge danger">Banned</span>
                                                                        </c:when>
                                                                        <c:when test="${user.status == 'Inactive'}">
                                                                            <span class="badge warning">Inactive</span>
                                                                        </c:when>
                                                                        <c:when test="${user.status == 'Deleted'}">
                                                                            <span class="badge secondary">Deleted</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <span
                                                                                class="badge secondary">${user.status}</span>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                                <td>
                                                                    <div class="flex items-center gap-4">
                                                                        <button class="btn-ghost"
                                                                            onclick="viewUser('${user.userId}')"
                                                                            title="View User">
                                                                            <svg width="16" height="16"
                                                                                fill="currentColor" viewBox="0 0 24 24">
                                                                                <path
                                                                                    d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z" />
                                                                            </svg>
                                                                        </button>
                                                                        <button class="btn-ghost"
                                                                            onclick="editUser('${user.userId}')"
                                                                            title="Edit User">
                                                                            <svg width="16" height="16"
                                                                                fill="currentColor" viewBox="0 0 24 24">
                                                                                <path
                                                                                    d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z" />
                                                                            </svg>
                                                                        </button>
                                                                        <c:choose>
                                                                            <c:when test="${user.status == 'Banned'}">
                                                                                <button class="btn-ghost"
                                                                                    onclick="unbanUser('${user.userId}', '${user.fullName}')"
                                                                                    title="Unban User">
                                                                                    <svg width="16" height="16"
                                                                                        fill="currentColor"
                                                                                        viewBox="0 0 24 24">
                                                                                        <path
                                                                                            d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z" />
                                                                                    </svg>
                                                                                </button>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <button class="btn-ghost"
                                                                                    onclick="banUser('${user.userId}', '${user.fullName}')"
                                                                                    title="Ban User">
                                                                                    <svg width="16" height="16"
                                                                                        fill="currentColor"
                                                                                        viewBox="0 0 24 24">
                                                                                        <path
                                                                                            d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM4 12c0-4.42 3.58-8 8-8 1.85 0 3.55.63 4.9 1.69L5.69 16.9C4.63 15.55 4 13.85 4 12zm8 8c-1.85 0-3.55-.63-4.9-1.69L18.31 7.1C19.37 8.45 20 10.15 20 12c0 4.42-3.58 8-8 8z" />
                                                                                    </svg>
                                                                                </button>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                        <button class="btn-ghost"
                                                                            onclick="deleteUser('${user.userId}', '${user.fullName}')"
                                                                            title="Delete User">
                                                                            <svg width="16" height="16"
                                                                                fill="currentColor" viewBox="0 0 24 24">
                                                                                <path
                                                                                    d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z" />
                                                                            </svg>
                                                                        </button>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <tr>
                                                            <td colspan="8" class="text-center py-8">
                                                                <div class="text-gray-500">No users found</div>
                                                            </td>
                                                        </tr>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>

                <!-- Add User Modal -->
                <div id="addUserModal" class="modal-overlay" style="display: none;">
                    <div class="modal">
                        <div class="modal-header">
                            <h3 class="modal-title">Add New User</h3>
                            <p class="modal-description">Create a new user account</p>
                        </div>
                        <div class="modal-content">
                            <form id="addUserForm">
                                <div class="form-group">
                                    <label class="form-label">Full Name</label>
                                    <input type="text" class="form-input" name="fullName" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Email</label>
                                    <input type="email" class="form-input" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Phone</label>
                                    <input type="tel" class="form-input" name="phone" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Address</label>
                                    <textarea class="form-textarea" name="address" required></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" onclick="closeAddUserModal()">Cancel</button>
                            <button class="btn btn-primary" onclick="saveUser()">Add User</button>
                        </div>
                    </div>
                </div>

                <!-- Ban User Modal -->
                <div id="banUserModal" class="modal-overlay" style="display: none;">
                    <div class="modal">
                        <div class="modal-header">
                            <h3 class="modal-title">Ban User</h3>
                            <p class="modal-description">Are you sure you want to ban this user?</p>
                        </div>
                        <div class="modal-content">
                            <div class="form-group">
                                <label class="form-label">Reason for ban</label>
                                <textarea class="form-textarea" id="banReason"
                                    placeholder="Enter reason for banning this user..."></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" onclick="closeBanUserModal()">Cancel</button>
                            <button class="btn btn-danger" onclick="confirmBanUser()">Ban User</button>
                        </div>
                    </div>
                </div>

                <!-- Account Detail Modal (Thông tin chi tiết) -->
                <div id="accountDetailModal" class="modal-overlay" style="display: none;">
                    <div class="modal modal-account-detail">
                        <div class="modal-header">
                            <h3 class="modal-title">Thông tin tài khoản</h3>
                        </div>
                        <div class="modal-content">
                            <div class="row g-0 align-items-center">
                                <div class="col-12">
                                    <div class="fw-bold mb-4" id="detailFullName" style="font-size:1.3rem;">HỌ VÀ TÊN</div>
                                    <div class="text-muted mb-2" id="detailJoinYear" style="font-size:1rem;">Tham gia từ năm 2022</div>
                                </div>
                                <div class="col-md-3 text-center">
                                    <div style="width: 120px; height: 120px; margin: 0 auto;">
                                        <img id="detailAvatar" src="" alt="Avatar" class="rounded-circle" width="120" height="120"
                                            style="object-fit:cover; background:#f3f3f3;"
                                            onerror="this.style.display='none';document.getElementById('avatarFallback').style.display='flex';">
                                        <div id="avatarFallback"
                                            style="display:none;align-items:center;justify-content:center;width:120px;height:120px;border-radius:50%;background:#f3f3f3;font-size:3rem;">
                                            <span>👤</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="row">
                                        <div class="col-6 mb-2">
                                            <strong>Email:</strong> <span id="detailEmail">email@example.com</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Số điện thoại:</strong> <span id="detailPhone">0123456789</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Username:</strong> <span id="detailUsername">username</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Giới tính:</strong> <span id="detailGender">Nam</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Ngày sinh:</strong> <span id="detailDob">2000-01-01</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Địa chỉ:</strong> <span id="detailAddress">N/A</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Ngày tham gia:</strong> <span id="detailJoinDate">2023-01-01</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Vai trò:</strong> <span id="detailRole">User</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Trạng thái:</strong> <span id="detailStatus">Active</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Số booking:</strong> <span id="detailBookingCount">0</span>
                                        </div>
                                        <div class="col-6 mb-2">
                                            <strong>Tổng chi tiêu:</strong> <span id="detailTotalSpent">$0.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Có thể bổ sung thêm các phần như booking gần đây, xe yêu thích ở đây -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" onclick="closeAccountDetailModal()">Đóng</button>
                        </div>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="${pageContext.request.contextPath}/scripts/admin/user-management.js"></script>
                   
            </body>

            </html>