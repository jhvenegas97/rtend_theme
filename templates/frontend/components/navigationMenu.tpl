{**
 * templates/frontend/components/navigationMenu.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Primary navigation menu list for OJS
 *
 * @uses navigationMenu array Hierarchical array of navigation menu item assignments
 * @uses id string Element ID to assign the outer <ul>
 * @uses ulClass string Class name(s) to assign the outer <ul>
 * @uses liClass string Class name(s) to assign all <li> elements
 *}

{if $navigationMenu}
	{if $navigationMenu->getAreaName() == 'user'}
		<ul id="{$id|escape}" class="">
			{foreach key=field item=navigationMenuItemAssignment from=$navigationMenu->menuTree}
				{if !$navigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
					{continue}
				{/if}
				<li class="nav-item {if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}dropdown{else}{/if}" >
					{assign var='iconClass' value=''}

					<a class="nav-link {if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}dropdown-toggle{else}{/if}" href="{$navigationMenuItemAssignment->navigationMenuItem->getUrl()}"
					{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}
						role="button" 
						data-bs-toggle="dropdown" 
						aria-expanded="false"
					{/if}
					>
					{if $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_REGISTER'}
						{assign var='iconClass' value='fa fa-user-plus'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_LOGIN'}
						{assign var='iconClass' value='fa fa-sign-in-alt'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_HOME'}
						{assign var='iconClass' value='fa fa-home'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_CONTACT'}
						{assign var='iconClass' value='fa fa-envelope'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_ABOUT'}
						{assign var='iconClass' value='fa fa-info-circle'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_BLOG'}
						{assign var='iconClass' value='fa fa-blog'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_ADMINISTRATION'}
						{assign var='iconClass' value='fa fa-cogs'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_DASHBOARD'}
						{assign var='iconClass' value='fa fa-tachometer-alt'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_PROFILE'}
						{assign var='iconClass' value='fa fa-user'}
					{elseif $navigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_LOGOUT'}
						{assign var='iconClass' value='fa fa-sign-out-alt'}
					{/if}

					{if $iconClass}
						<i class="{$iconClass}"></i>
					{/if}

						{$navigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
					</a>

					{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()}
						<ul class="dropdown-menu">
						
							{foreach key=childField item=childNavigationMenuItemAssignment from=$navigationMenuItemAssignment->children}
								{if $childNavigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
									<li class="dropdown-item">
										<a class="nav-link" href="{$childNavigationMenuItemAssignment->navigationMenuItem->getUrl()}">
											{if $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_REGISTER'}
												{assign var='iconClass' value='fa fa-user-plus'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_LOGIN'}
												{assign var='iconClass' value='fa fa-sign-in-alt'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_HOME'}
												{assign var='iconClass' value='fa fa-home'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_CONTACT'}
												{assign var='iconClass' value='fa fa-envelope'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_ABOUT'}
												{assign var='iconClass' value='fa fa-info-circle'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_BLOG'}
												{assign var='iconClass' value='fa fa-blog'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_ADMINISTRATION'}
												{assign var='iconClass' value='fa fa-cogs'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_DASHBOARD'}
												{assign var='iconClass' value='fa fa-tachometer-alt'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_PROFILE'}
												{assign var='iconClass' value='fa fa-user'}
											{elseif $childNavigationMenuItemAssignment->navigationMenuItem->getType() == 'NMI_TYPE_USER_LOGOUT'}
												{assign var='iconClass' value='fa fa-sign-out-alt'}
											{/if}

											{if $iconClass}
												<i class="{$iconClass}"></i>
											{/if}

											{$childNavigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
										</a>
									</li>
								{/if}
							{/foreach}
						</ul>
					{/if}
				</li>
			{/foreach}
		</ul>
	{elseif $navigationMenu->getAreaName() == 'primary'}
		<ul id="{$id|escape}" class="navbar-nav me-auto mb-2 mb-lg-0">
			{foreach key=field item=navigationMenuItemAssignment from=$navigationMenu->menuTree}
				{if !$navigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
					{continue}
				{/if}
				<li class="nav-item {if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}dropdown{else}{/if}" >
					<a class="nav-link {if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}dropdown-toggle{else}{/if}" href="{$navigationMenuItemAssignment->navigationMenuItem->getUrl()}"
					{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible() == 1}
						role="button" 
						data-bs-toggle="dropdown" 
						aria-expanded="false"
					{/if}
					>
						{$navigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
					</a>
					
					{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()}
						<ul class="dropdown-menu">
							{foreach key=childField item=childNavigationMenuItemAssignment from=$navigationMenuItemAssignment->children}
								{if $childNavigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
									<li class="dropdown-item">
										<a class="nav-link" href="{$childNavigationMenuItemAssignment->navigationMenuItem->getUrl()}">
											{$childNavigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
										</a>
									</li>
								{/if}
							{/foreach}
						</ul>
					{/if}
				</li>
			{/foreach}
		</ul>
	{/if}
{/if}
