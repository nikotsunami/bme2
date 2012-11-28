// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package medizin.server.domain;

import java.util.List;
import medizin.server.domain.StaticContent;
import medizin.server.domain.StaticContentDataOnDemand;
import medizin.server.domain.StaticContentIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StaticContentIntegrationTest_Roo_IntegrationTest {
    
    declare @type: StaticContentIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: StaticContentIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: StaticContentIntegrationTest: @Transactional;
    
    @Autowired
    private StaticContentDataOnDemand StaticContentIntegrationTest.dod;
    
    @Test
    public void StaticContentIntegrationTest.testCountStaticContents() {
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", dod.getRandomStaticContent());
        long count = StaticContent.countStaticContents();
        Assert.assertTrue("Counter for 'StaticContent' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void StaticContentIntegrationTest.testFindStaticContent() {
        StaticContent obj = dod.getRandomStaticContent();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to provide an identifier", id);
        obj = StaticContent.findStaticContent(id);
        Assert.assertNotNull("Find method for 'StaticContent' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'StaticContent' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void StaticContentIntegrationTest.testFindAllStaticContents() {
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", dod.getRandomStaticContent());
        long count = StaticContent.countStaticContents();
        Assert.assertTrue("Too expensive to perform a find all test for 'StaticContent', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<StaticContent> result = StaticContent.findAllStaticContents();
        Assert.assertNotNull("Find all method for 'StaticContent' illegally returned null", result);
        Assert.assertTrue("Find all method for 'StaticContent' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void StaticContentIntegrationTest.testFindStaticContentEntries() {
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", dod.getRandomStaticContent());
        long count = StaticContent.countStaticContents();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<StaticContent> result = StaticContent.findStaticContentEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'StaticContent' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'StaticContent' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void StaticContentIntegrationTest.testFlush() {
        StaticContent obj = dod.getRandomStaticContent();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to provide an identifier", id);
        obj = StaticContent.findStaticContent(id);
        Assert.assertNotNull("Find method for 'StaticContent' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyStaticContent(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'StaticContent' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void StaticContentIntegrationTest.testMergeUpdate() {
        StaticContent obj = dod.getRandomStaticContent();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to provide an identifier", id);
        obj = StaticContent.findStaticContent(id);
        boolean modified =  dod.modifyStaticContent(obj);
        Integer currentVersion = obj.getVersion();
        StaticContent merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'StaticContent' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void StaticContentIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", dod.getRandomStaticContent());
        StaticContent obj = dod.getNewTransientStaticContent(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'StaticContent' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'StaticContent' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void StaticContentIntegrationTest.testRemove() {
        StaticContent obj = dod.getRandomStaticContent();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'StaticContent' failed to provide an identifier", id);
        obj = StaticContent.findStaticContent(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'StaticContent' with identifier '" + id + "'", StaticContent.findStaticContent(id));
    }
    
}