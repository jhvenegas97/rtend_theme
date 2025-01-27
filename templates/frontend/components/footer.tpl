{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<style>
	.footer {
            background-color: #002A5C;
            color: white;
            padding: 40px 0;
        }
        .footer h4 {
            color: white;
            font-size: 1.2rem;
            margin-bottom: 20px;
            border-bottom: 2px solid rgba(255,255,255,0.1);
            padding-bottom: 10px;
        }
        .footer a {
            color: white;
            text-decoration: none;
        }
        .footer a:hover {
            color: #cccccc;
        }
        .footer p {
            margin-bottom: 0.5rem;
        }
        .social-icons a {
            margin-right: 15px;
            font-size: 1.2rem;
        }
        .contact-info i {
            width: 25px;
        }
        .license-section {
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid rgba(255,255,255,0.1);
        }
</style>

<footer class="footer">
        <div class="container">
            <div class="row">
                <!-- Logo and Description -->
                <div class="col-md-4 mb-4">
                    <h4>Sistema de Revistas Universidad de Nariño</h4>
                    <p>Universidad de Nariño</p>
                    <p>San Juan de Pasto - Colombia</p>
                    <p>Ciudad Universitaria - Torobajo - Calle 18 No. 52-35</p>
                    <p>Biblioteca Alberto Quijano- Segundo Piso</p>
                </div>

                <!-- Contact Information -->
                <div class="col-md-4 mb-4">
                    <h4>Contacto</h4>
                    <div class="contact-info">
                        <p><i class="fas fa-envelope"></i> Email: revistatendencias@udenar.edu.co</p>
                        <p><i class="fas fa-phone"></i> Teléfono: 301 425 3247</p>
                        <p><i class="fas fa-globe"></i> Website: <a href="rtend" target="_blank">revistas.udenar.edu.co</a></p>
                    </div>
                    <div class="social-icons mt-3">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>

                <!-- Important Links -->
                <div class="col-md-4 mb-4">
                    <h4>Links de Interés</h4>
                    <p><a href="#"><i class="fas fa-info-circle me-2"></i>Acerca de la Revista</a></p>
                    <p><a href="#"><i class="fas fa-users me-2"></i>Equipo Editorial</a></p>
                    <p><a href="#"><i class="fas fa-file-alt me-2"></i>Envíos</a></p>
                </div>
            </div>

            <!-- License Section -->
            <div class="row license-section">
                <div class="col-12">
                    <a href="http://creativecommons.org/licenses/by-nc/4.0/"><img style="border-width: 0;" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" alt="Licencia de Creative Commons"></a>
                    <p class="mt-2">Está revista está bajo una licencia <a href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Reconocimiento-NoComercial 4.0 Internacional License</a></p>
                </div>
            </div>
        </div>
    </footer>

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
